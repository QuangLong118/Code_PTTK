/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author Admin
 */
public class Hoadon118 {
    private int id;
    private LocalDateTime thoigiantao;
    private int Khachhang118id;
    private int Nhanvien_Banhang118id;
    private int trangthai ; /*0 là đã tạo hóa đơn, 1 là đã xác nhận, 2 là đang vận chuyển, 3 là đã hoàn thành */
    
    public Hoadon118(int id, LocalDateTime thoigiantao, int Khachhang118id, int Nhanvien_Banhang118id, int trangthai) {
        this.id = id;
        this.thoigiantao = thoigiantao;
        this.Khachhang118id = Khachhang118id;
        this.Nhanvien_Banhang118id = Nhanvien_Banhang118id;
        this.trangthai = trangthai;
    }

    public Hoadon118() {
    }
    
    
    
    public void setId(int id) {
        this.id = id;
    }

    public void setThoigiantao(LocalDateTime thoigiantao) {
        this.thoigiantao = thoigiantao;
    }


    public void setKhachhang118id(int Khachhang118id) {
        this.Khachhang118id = Khachhang118id;
    }

    public void setNhanvien_Banhang118id(int Nhanvien_Banhang118id) {
        this.Nhanvien_Banhang118id = Nhanvien_Banhang118id;
    }

    public void setTrangthai(int trangthai) {
        this.trangthai = trangthai;
    }

    public int getId() {
        return id;
    }

    public LocalDateTime getThoigiantao() {
        return thoigiantao;
    }

    public int getKhachhang118id() {
        return Khachhang118id;
    }

    public int getNhanvien_Banhang118id() {
        return Nhanvien_Banhang118id;
    }

    public int getTrangthai() {
        return trangthai;
    }

    
  
}
