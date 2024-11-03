/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Thanhvien118;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Admin
 */
public class Thanhvien118DAO extends DAO {
    public Thanhvien118DAO() {
        super();
    }
    
    public int kiemtraThanhvien(Thanhvien118 tv){
        int kiemtra_vaitro = 0;
        if(tv.getUsername().contains("true") ||
            tv.getUsername().contains("=")||
            tv.getPassword().contains("true") ||
            tv.getPassword().contains("=")) return 7;
        String querry_kt_username = "SELECT vaitro, password FROM Thanhvien118 WHERE username = ?";
        
        try(PreparedStatement pstmt = con.prepareStatement(querry_kt_username)) {
             
            pstmt.setString(1, tv.getUsername()); // Gán giá trị cho tham số trong câu lệnh SQL

            ResultSet rs = pstmt.executeQuery(); // Thực thi câu lệnh SQL

            // Kiểm tra xem có bản ghi nào không
            if (rs.next()) {
                int vaitro = rs.getInt("vaitro"); // Lấy giá trị vaitro từ bản ghi
                String storedPassword = rs.getString("password");
                if (vaitro == 0){
                    kiemtra_vaitro = 1;
                    if (storedPassword.equals(tv.getPassword()))kiemtra_vaitro = 2;   
                }
                else if (vaitro == 1){
                    kiemtra_vaitro = 3;
                    if (storedPassword.equals(tv.getPassword()))kiemtra_vaitro = 4;  
                }
                else {
                    kiemtra_vaitro = 5;
                    if (storedPassword.equals(tv.getPassword()))kiemtra_vaitro = 6;
                }
            } 
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
        return kiemtra_vaitro;
    }
    public boolean newThanhvien(Thanhvien118 tv) {
        int kiemtra_vaitro = kiemtraThanhvien(tv);
        if (kiemtra_vaitro == 0) {
            String insertSQL = "INSERT INTO Thanhvien118 (username, password, name, ngaysinh, email, SDT, diachi, vaitro) " +
                            "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = con.prepareStatement(insertSQL, PreparedStatement.RETURN_GENERATED_KEYS)) {
                pstmt.setString(1, tv.getUsername());
                pstmt.setString(2, tv.getPassword());
                pstmt.setString(3, tv.getName());
                pstmt.setDate(4, java.sql.Date.valueOf(tv.getNgaysinh()));
                pstmt.setString(5, tv.getEmail());
                pstmt.setString(6, tv.getSDT());
                pstmt.setString(7, tv.getDiachi());
                pstmt.setInt(8, tv.getVaitro());
                int rowsAffected = pstmt.executeUpdate();
                if (rowsAffected > 0) {
                    // Lấy ID của bản ghi vừa thêm vào
                    try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                        if (generatedKeys.next()) {
                            int thanhvienId = generatedKeys.getInt(1);

                            // Thêm bản ghi tương ứng vào bảng Khachhang118
                            String insertKhachhangSQL = "INSERT INTO Khachhang118 (id) VALUES (?)";
                            try (PreparedStatement pstmtKhachhang = con.prepareStatement(insertKhachhangSQL)) {
                                pstmtKhachhang.setInt(1, thanhvienId);
                                pstmtKhachhang.executeUpdate();
                                System.out.println("Đã thêm bản ghi thành công vào cả hai bảng.");
                            }
                        }
                    }
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }
    
    public Thanhvien118 getThanhvienByUsername(String username){
        Thanhvien118 member = new Thanhvien118();
        String sql = "SELECT * FROM Thanhvien118 WHERE username = ?"; // Truy vấn SQL

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, username); // Thiết lập giá trị cho placeholder

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // Nếu có kết quả, tạo đối tượng Thanhvien118
                    member = new Thanhvien118();
                    member.setUsername(rs.getString("username"));
                    member.setPassword(rs.getString("password"));
                    member.setName(rs.getString("name"));
                    member.setNgaysinh(rs.getDate("ngaysinh").toLocalDate()); // Chuyển đổi java.sql.Date thành LocalDate
                    member.setEmail(rs.getString("email"));
                    member.setSDT(rs.getString("SDT"));
                    member.setDiachi(rs.getString("diachi"));
                    member.setVaitro(rs.getInt("vaitro"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return member;
    }
    public Thanhvien118 getThanhvienById(int id){
        Thanhvien118 member = new Thanhvien118();
        String sql = "SELECT * FROM Thanhvien118 WHERE id = ?"; // Truy vấn SQL

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, String.valueOf(id)); // Thiết lập giá trị cho placeholder

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // Nếu có kết quả, tạo đối tượng Thanhvien118
                    member = new Thanhvien118();
                    member.setUsername(rs.getString("username"));
                    member.setPassword(rs.getString("password"));
                    member.setName(rs.getString("name"));
                    member.setNgaysinh(rs.getDate("ngaysinh").toLocalDate()); // Chuyển đổi java.sql.Date thành LocalDate
                    member.setEmail(rs.getString("email"));
                    member.setSDT(rs.getString("SDT"));
                    member.setDiachi(rs.getString("diachi"));
                    member.setVaitro(rs.getInt("vaitro"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return member;
    }

    
    
    
//    public static void main(String[] args){
//        Thanhvien118 tv = new Thanhvien118();
//        tv.setUsername("admin1");
//        tv.setPassword("password1");
//        Thanhvien118DAO tvdao = new Thanhvien118DAO();
//        int kq = tvdao.kiemtraThanhvien(tv);
//        System.out.println(kq);
//    }
        
}
