/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ThongkeHangnhap118 {
    private Hanghoa118 hh;
    private int tongsoluong;
    private int tongsotien;

    public ThongkeHangnhap118() {
    }

    public ThongkeHangnhap118(Hanghoa118 hh, int tongsoluong, int tongsotien) {
        this.hh = hh;
        this.tongsoluong = tongsoluong;
        this.tongsotien = tongsotien;
    }

    public Hanghoa118 getHh() {
        return hh;
    }

    public int getTongsoluong() {
        return tongsoluong;
    }

    public int getTongsotien() {
        return tongsotien;
    }

    public void setHh(Hanghoa118 hh) {
        this.hh = hh;
    }

    public void setTongsoluong(int tongsoluong) {
        this.tongsoluong = tongsoluong;
    }

    public void setTongsotien(int tongsotien) {
        this.tongsotien = tongsotien;
    }
    
    
}
