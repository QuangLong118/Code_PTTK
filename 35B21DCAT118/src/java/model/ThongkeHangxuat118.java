/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ThongkeHangxuat118 {
    private Hanghoa118 hh;
    private int tongsoluong;
    private int tongtien;

    public ThongkeHangxuat118() {
    }

    public ThongkeHangxuat118(Hanghoa118 hh, int tongsoluong, int tongtien) {
        this.hh = hh;
        this.tongsoluong = tongsoluong;
        this.tongtien = tongtien;
    }

    public Hanghoa118 getHh() {
        return hh;
    }

    public int getTongsoluong() {
        return tongsoluong;
    }

    public int getTongtien() {
        return tongtien;
    }

    public void setHh(Hanghoa118 hh) {
        this.hh = hh;
    }

    public void setTongsoluong(int tongsoluong) {
        this.tongsoluong = tongsoluong;
    }

    public void setTongtien(int tongtien) {
        this.tongtien = tongtien;
    }
    
    
}
