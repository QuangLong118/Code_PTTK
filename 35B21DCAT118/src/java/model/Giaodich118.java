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
public class Giaodich118 {
    private int id;
    private LocalDateTime thoigianhoanthanh;

    public Giaodich118() {
    }
    
    public Giaodich118(int id, LocalDateTime thoigianhoanthanh) {
        this.id = id;
        this.thoigianhoanthanh = thoigianhoanthanh;
    }
    
    
    public void setThoigianhoanthanh(LocalDateTime thoigianhoanthanh) {
        this.thoigianhoanthanh = thoigianhoanthanh;
    }
    
    @Override
    public boolean equals(Object obj) {
        // Kiểm tra xem tham chiếu có phải là cùng một đối tượng hay không
        if (this == obj) {
            return true;
        }
        // Kiểm tra xem obj có phải là một thể loại Giaodich118 hay không
        if (!(obj instanceof Giaodich118)) {
            return false;
        }
        // Chuyển đổi obj thành Giaodich118
        Giaodich118 other = (Giaodich118) obj;
        // So sánh chỉ dựa vào trường id
        return this.id == other.id;
    }
    
    

    public int getId() {
        return id;
    }

    public LocalDateTime getThoigianhoanthanh() {
        return thoigianhoanthanh;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setThoigianhoanthanh(int id,LocalDateTime thoigianhoanthanh) {
        this.id = id;
        this.thoigianhoanthanh = thoigianhoanthanh;
    }
    
}
