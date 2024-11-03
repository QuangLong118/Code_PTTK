/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class DAO {
    public Connection con;
    public DAO(){
        String dbUrl = "jdbc:mysql://localhost:3306/35B21DCAT118";
        String dbUsername = "root";
        String dbPassword = "";

        try {
            // Nạp driver JDBC MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Thiết lập kết nối
            con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            System.out.println("Kết nối cơ sở dữ liệu thành công.");
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm thấy driver MySQL JDBC.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Kết nối cơ sở dữ liệu thất bại.");
            e.printStackTrace();
        }
    }
}
