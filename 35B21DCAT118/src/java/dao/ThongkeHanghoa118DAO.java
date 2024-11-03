/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.Comparator;
import model.ThongkeHanghoa118;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import model.Hanghoa118;
import java.time.LocalDate;
import java.util.ArrayList;


/**
 *
 * @author Admin
 */
public class ThongkeHanghoa118DAO extends DAO {
    public ThongkeHanghoa118DAO(){
        super();
    }
    
    public ArrayList<ThongkeHanghoa118> getlistTKHanghoa(LocalDate startDate, LocalDate endDate) {
        ArrayList<ThongkeHanghoa118> thongkeList = new ArrayList<>();
        
        String sql = "SELECT hh.id, hh.name, hh.dongia, hh.soluongtrongkho, hh.mota, " +
                     "SUM(hdx.soluong) AS total_soluong, " +
                     "SUM(hh.dongia * hdx.soluong) AS total_doanhthu " +
                     "FROM 35B21DCAT118.Giaodich118 gd " +
                     "JOIN 35B21DCAT118.Hoadon_Hangxuat118 hdx ON gd.id = hdx.Hoadon118id " +
                     "JOIN 35B21DCAT118.Hangxuat118 hx ON hdx.Hangxuat118id = hx.id " +
                     "JOIN 35B21DCAT118.Hanghoa118 hh ON hx.id = hh.id " +
                     "WHERE gd.thoigianhoanthanh BETWEEN ? AND ? " +
                     "GROUP BY hh.id, hh.name, hh.dongia, hh.soluongtrongkho, hh.mota;";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            // Chuyển đổi LocalDate sang Date để dùng với SQL
            stmt.setDate(1, Date.valueOf(startDate));
            stmt.setDate(2, Date.valueOf(endDate));
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Hanghoa118 hanghoa = new Hanghoa118();
                    hanghoa.setId(rs.getInt("id"));
                    hanghoa.setName(rs.getString("name"));
                    hanghoa.setDongia(rs.getInt("dongia"));
                    hanghoa.setSoluongtrongkho(rs.getInt("soluongtrongkho"));
                    hanghoa.setMota(rs.getString("mota"));
                    
                    int soluong = rs.getInt("total_soluong");
                    int doanhthu = rs.getInt("total_doanhthu");
                    ThongkeHanghoa118 thongke = new ThongkeHanghoa118();
                    thongke.setHh(hanghoa);
                    thongke.setSoluong(soluong);
                    thongke.setDoanhthu(doanhthu);
                    thongkeList.add(thongke);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        thongkeList.sort(Comparator.comparingInt(ThongkeHanghoa118::getDoanhthu).reversed());
        return thongkeList;
    }
}
