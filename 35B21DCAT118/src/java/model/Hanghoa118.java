/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Hanghoa118 {
    private int id;
    private String name;
    private int dongia;
    private int soluongtrongkho;
    private String mota;
    
    public Hanghoa118() {
    }
        public Hanghoa118(int id, String name, int dongia, int soluongtrongkho, String mota) {
        this.id = id;
        this.name = name;
        this.dongia = dongia;
        this.soluongtrongkho = soluongtrongkho;
        this.mota = mota;
    }

    public int getId() {
        return id;
    }
    
    @Override
    public boolean equals(Object obj) {
        // Kiểm tra nếu hai đối tượng là cùng một tham chiếu
        if (this == obj) return true;
        // Kiểm tra nếu obj là null hoặc khác kiểu
        if (obj == null || getClass() != obj.getClass()) return false;
        
        // Ép kiểu obj thành Hanghoa118 để so sánh id
        Hanghoa118 that = (Hanghoa118) obj;
        
        // So sánh thuộc tính id
        return this.id == that.id;
    }
    




    public String getName() {
        return name;
    }

    public int getDongia() {
        return dongia;
    }

    public int getSoluongtrongkho() {
        return soluongtrongkho;
    }

    public String getMota() {
        return mota;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDongia(int dongia) {
        this.dongia = dongia;
    }

    public void setSoluongtrongkho(int soluongtrongkho) {
        this.soluongtrongkho = soluongtrongkho;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
    
}
