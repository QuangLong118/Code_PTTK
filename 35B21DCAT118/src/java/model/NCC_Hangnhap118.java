/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class NCC_Hangnhap118 {
    private int id;
    private int soluong;
    private int sotien;
    private int Nhacungcap118id;
    private int Hangnhap118id;

    public NCC_Hangnhap118(int id, int soluong, int sotien, int Nhacungcap118id, int Hangnhap118id) {
        this.id = id;
        this.soluong = soluong;
        this.sotien = sotien;
        this.Nhacungcap118id = Nhacungcap118id;
        this.Hangnhap118id = Hangnhap118id;
    }

    public int getId() {
        return id;
    }

    public int getSoluong() {
        return soluong;
    }

    public int getSotien() {
        return sotien;
    }

    public int getNhacungcap118id() {
        return Nhacungcap118id;
    }

    public int getHangnhap118id() {
        return Hangnhap118id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public void setSotien(int sotien) {
        this.sotien = sotien;
    }

    public void setNhacungcap118id(int Nhacungcap118id) {
        this.Nhacungcap118id = Nhacungcap118id;
    }

    public void setHangnhap118id(int Hangnhap118id) {
        this.Hangnhap118id = Hangnhap118id;
    }
    
    
}
