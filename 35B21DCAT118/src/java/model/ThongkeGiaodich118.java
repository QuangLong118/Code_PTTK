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
public class ThongkeGiaodich118 {
    private Giaodich118 GD;
    private LocalDateTime thoigiantao;
    private int soluong;
    private Thanhvien118 khachhang;
    private Thanhvien118 nhanvien;

    public ThongkeGiaodich118() {
    }
    
    public void setGD(Giaodich118 GD) {
        this.GD = GD;
    }

    public void setThoigiantao(LocalDateTime thoigiantao) {
        this.thoigiantao = thoigiantao;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public void setKhachhang(Thanhvien118 khachhang) {
        this.khachhang = khachhang;
    }

    public void setNhanvien(Thanhvien118 nhanvien) {
        this.nhanvien = nhanvien;
    }
    


    public Giaodich118 getGD() {
        return GD;
    }

    public LocalDateTime getThoigiantao() {
        return thoigiantao;
    }

    public int getSoluong() {
        return soluong;
    }

    public Thanhvien118 getKhachhang() {
        return khachhang;
    }

    public Thanhvien118 getNhanvien() {
        return nhanvien;
    }

    
    
    
}
