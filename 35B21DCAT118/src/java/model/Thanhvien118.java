/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author Admin
 */
public class Thanhvien118 {
    private int id;
    private String username; 
    private String password;
    private String name;
    private LocalDate ngaysinh;
    private String email;
    private String SDT;
    private String diachi;
    private int vaitro;
    
    public Thanhvien118(String username, String password, String name, LocalDate ngaysinh, String email, String SDT, String diachi, int vaitro) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.ngaysinh = ngaysinh;
        this.email = email;
        this.SDT = SDT;
        this.diachi = diachi;
        this.vaitro = vaitro;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public Thanhvien118(){}
    

    public int getId() {
        return id;
    }   

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public LocalDate getNgaysinh() {
        return ngaysinh;
    }

    public String getEmail() {
        return email;
    }

    public String getSDT() {
        return SDT;
    }

    public String getDiachi() {
        return diachi;
    }

    public int getVaitro() {
        return vaitro;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNgaysinh(LocalDate ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public void setVaitro(int vaitro) {
        this.vaitro = vaitro;
    }
    
//    public static void main(String[] args) {
//        // Tạo đối tượng với constructor không tham số
//        Thanhvien118 thanhVien1 = new Thanhvien118();
//        
//        thanhVien1.setUsername("admin1");
//        thanhVien1.setPassword("password1");
//        
//        System.out.println(thanhVien1.getUsername());
//
//        
//    }
}
