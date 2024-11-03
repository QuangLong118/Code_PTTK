/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ThongkeKhachhang118 {
    private Thanhvien118 tv;
    private int soluongHD;
    private int tongchitieu;

    public ThongkeKhachhang118() {
    }
    
    public ThongkeKhachhang118(Thanhvien118 tv, int soluongHD, int tongchitieu) {
        this.tv = tv;
        this.soluongHD = soluongHD;
        this.tongchitieu = tongchitieu;
    }

    public Thanhvien118 getTv() {
        return tv;
    }

    public int getSoluongHD() {
        return soluongHD;
    }

    public int getTongchitieu() {
        return tongchitieu;
    }

    public void setTv(Thanhvien118 tv) {
        this.tv = tv;
    }

    public void setSoluongHD(int soluongHD) {
        this.soluongHD = soluongHD;
    }

    public void setTongchitieu(int tongchitieu) {
        this.tongchitieu = tongchitieu;
    }
    
    
    
}
