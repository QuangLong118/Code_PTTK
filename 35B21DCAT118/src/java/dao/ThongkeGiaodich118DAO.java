/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Hanghoa118;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import model.Giaodich118;
import model.Thanhvien118;
import model.ThongkeGiaodich118;

/**
 *
 * @author Admin
 */
public class ThongkeGiaodich118DAO extends DAO {

    public ThongkeGiaodich118DAO() {
        super();
    }
    
    public Hanghoa118 getHanghoaById(int id) {
        Hanghoa118 hanghoa = null;
        String sql = "SELECT * FROM Hanghoa118 WHERE id = ?"; // Câu lệnh SQL

        try (PreparedStatement statement = con.prepareStatement(sql)) {
            statement.setInt(1, id); // Gán giá trị cho tham số id

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    // Lấy dữ liệu từ ResultSet và tạo đối tượng Hanghoa118
                    hanghoa = new Hanghoa118(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("dongia"),
                        resultSet.getInt("soluongtrongkho"),
                        resultSet.getString("mota")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In ra thông báo lỗi
        }
        
        return hanghoa; // Trả về đối tượng Hanghoa118 hoặc null nếu không tìm thấy
    }
    
    public ArrayList<ThongkeGiaodich118> getlistTKGiaodich(Hanghoa118 hh,LocalDate startDate, LocalDate endDate) {
        ArrayList<ThongkeGiaodich118> thongkeGiaodichList = new ArrayList<>();

        String sql = "SELECT gd.id, gd.thoigianhoanthanh, hd.thoigiantao, hdx.soluong, " +
                 "kh.id AS khachhang_id, kh.username AS khachhang_username, kh.password AS khachhang_password, kh.name AS khachhang_name, kh.ngaysinh AS khachhang_ngaysinh, kh.email AS khachhang_email, kh.SDT AS khachhang_SDT, kh.diachi AS khachhang_diachi, kh.vaitro AS khachhang_vaitro, " +
                 "nv.id AS nhanvien_id, nv.username AS nhanvien_username, nv.password AS nhanvien_password, nv.name AS nhanvien_name, nv.ngaysinh AS nhanvien_ngaysinh, nv.email AS nhanvien_email, nv.SDT AS nhanvien_SDT, nv.diachi AS nhanvien_diachi, nv.vaitro AS nhanvien_vaitro " +
                 "FROM Giaodich118 gd " +
                 "JOIN Hoadon118 hd ON gd.id = hd.id " +
                 "JOIN Hoadon_Hangxuat118 hdx ON hd.id = hdx.Hoadon118id " +
                 "JOIN Thanhvien118 kh ON hd.Khachhang118id = kh.id " +
                 "JOIN Thanhvien118 nv ON hd.Nhanvien_Banhang118id = nv.id " +
                 "WHERE DATE(gd.thoigianhoanthanh) BETWEEN ? AND ? " +
                 "AND hdx.Hangxuat118id = ? " +  // Lọc theo ID hàng hóa
                 "GROUP BY gd.id";

        try (PreparedStatement statement = con.prepareStatement(sql)) {
            statement.setDate(1, Date.valueOf(startDate));
            statement.setDate(2, Date.valueOf(endDate));
            statement.setInt(3, hh.getId());  // Truyền giá trị ID của hàng hóa
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    // Tạo đối tượng Giaodich118
                    Giaodich118 giaodich = new Giaodich118();
                    giaodich.setId(resultSet.getInt("id"));
                    giaodich.setThoigianhoanthanh(resultSet.getTimestamp("thoigianhoanthanh").toLocalDateTime());

                    // Lấy thông tin thoigiantao của hoadon
                    LocalDateTime thoigiantao = resultSet.getTimestamp("thoigiantao").toLocalDateTime();

                    // Lấy số lượng hàng hóa trong giao dịch
                    int soluong = resultSet.getInt("soluong");

                    // Tạo đối tượng Khachhang (Thanhvien118)
                    Thanhvien118 khachhang = new Thanhvien118();
                    khachhang.setId(resultSet.getInt("khachhang_id"));
                    khachhang.setUsername(resultSet.getString("khachhang_username"));
                    khachhang.setPassword(resultSet.getString("khachhang_password"));
                    khachhang.setName(resultSet.getString("khachhang_name"));
                    khachhang.setNgaysinh(resultSet.getDate("khachhang_ngaysinh").toLocalDate());
                    khachhang.setEmail(resultSet.getString("khachhang_email"));
                    khachhang.setSDT(resultSet.getString("khachhang_SDT"));
                    khachhang.setDiachi(resultSet.getString("khachhang_diachi"));
                    khachhang.setVaitro(resultSet.getInt("khachhang_vaitro"));

                    // Tạo đối tượng Nhanvien (Thanhvien118)
                    Thanhvien118 nhanvien = new Thanhvien118();
                    nhanvien.setId(resultSet.getInt("nhanvien_id"));
                    nhanvien.setUsername(resultSet.getString("nhanvien_username"));
                    nhanvien.setPassword(resultSet.getString("nhanvien_password"));
                    nhanvien.setName(resultSet.getString("nhanvien_name"));
                    nhanvien.setNgaysinh(resultSet.getDate("nhanvien_ngaysinh").toLocalDate());
                    nhanvien.setEmail(resultSet.getString("nhanvien_email"));
                    nhanvien.setSDT(resultSet.getString("nhanvien_SDT"));
                    nhanvien.setDiachi(resultSet.getString("nhanvien_diachi"));
                    nhanvien.setVaitro(resultSet.getInt("nhanvien_vaitro"));

                    // Tạo đối tượng ThongkeGiaodich118 và thêm vào danh sách
                    ThongkeGiaodich118 thongkeGiaodich = new ThongkeGiaodich118();
                    thongkeGiaodich.setGD(giaodich);
                    thongkeGiaodich.setThoigiantao(thoigiantao);
                    thongkeGiaodich.setSoluong(soluong);
                    thongkeGiaodich.setKhachhang(khachhang);
                    thongkeGiaodich.setNhanvien(nhanvien);

                    thongkeGiaodichList.add(thongkeGiaodich);
                }

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return thongkeGiaodichList;
    }
}
