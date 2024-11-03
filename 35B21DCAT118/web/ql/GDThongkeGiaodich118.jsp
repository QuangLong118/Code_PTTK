<%-- 
    Document   : GDThongkeHanghoa118
    Created on : 31 Oct 2024, 22:20:31
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,java.time.LocalDate,dao.*,model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê hàng hóa</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                color: #333;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }
            h1 {
                color: #333;
                text-align: center;
                font-size: 24px;
                margin-bottom: 20px;
            }
            .container {
                width: 90%;
                max-width: 1200px;
                background-color: #fff;
                padding: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
                font-size: 16px;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 12px;
            }
            th {
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
                text-align: center;
            }
            td {
                text-align: center;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            tr:hover {
                background-color: #e9f5e9;
            }
            p {
                text-align: center;
                color: #777;
                font-size: 18px;
            }
            .date-info {
                text-align: center;
                font-size: 18px;
                color: #555;
                margin-bottom: 20px;
            }
            .no-border-table {
                border-collapse: collapse;
                border: none;
                width: 300px;
                margin: auto;
            }
            .no-border-table td {
                border: none;
                padding: 10px;
            }
            .back-button {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }
            .back-button a {
                background-color: #ff4d4d;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                font-size: 16px;
                font-weight: bold;
            }
            .back-button a:hover {
                background-color: #ff3333;
            }
        </style>
    </head>
    <body>
<%
Thanhvien118 tv = (Thanhvien118) session.getAttribute("quanly");      
if (tv != null) {
%>
        <div class="container">
            <h1>Thống kê giao dịch</h1>
            <%
                Hanghoa118 hh = (Hanghoa118) session.getAttribute("hanghoa");
                ArrayList<ThongkeGiaodich118> listThongkeGiaodich = (ArrayList<ThongkeGiaodich118>) session.getAttribute("chitietgiaodich");
                if (listThongkeGiaodich == null || listThongkeGiaodich.isEmpty()) {
            %>
                <p>Không có dữ liệu thống kê.</p>
            <% 
                } else { 
            %>
                <div class="date-info">
                    <p>Ngày bắt đầu: <%= session.getAttribute("ngaybd") %> | Ngày kết thúc: <%= session.getAttribute("ngaykt") %></p>
                </div>
                <table class="no-border-table">
                    <tr>
                        <td>Mã hàng hóa</td>
                        <td><%= hh.getId()%></td>
                    </tr>
                    <tr>
                        <td>Tên hàng hóa</td>
                        <td><%= hh.getName()%></td>
                    </tr>
                    <tr>
                        <td>Đơn giá</td>
                        <td><%= hh.getDongia()%></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <th>Mã Giao dịch</th>
                        <th>Khách hàng</th>
                        <th>Số điện thoại</th>
                        <th>Nhân viên</th>
                        <th>Số điện thoại</th>
                        <th>Thời gian tạo</th>
                        <th>Thời gian hoàn thành</th>
                        <th>Số lượng</th>
                        <th>Số tiền</th>
                    </tr>
                    <% 
                        int tongtien = 0;
                        for (ThongkeGiaodich118 thongke : listThongkeGiaodich) {
                            Giaodich118 GD  = thongke.getGD();
                            Thanhvien118 KH  =thongke.getKhachhang();
                            Thanhvien118 NV  =thongke.getNhanvien();
                    %>
                    <tr>
                        <td><%= GD.getId() %></td>
                        <td><%= KH.getName() %></td>
                        <td><%= KH.getSDT() %></td>
                        <td><%= NV.getName() %></td>
                        <td><%= NV.getSDT() %></td>
                        <td><%= thongke.getThoigiantao() %></td>
                        <td><%= GD.getThoigianhoanthanh() %></td>
                        <td><%= thongke.getSoluong() %></td>
                        <td><%= thongke.getSoluong()*hh.getDongia() %></td>
                    </tr>
                    <% 
                        tongtien+=thongke.getSoluong()*hh.getDongia();
                        }
                    %>
                    <tr>
                        <td colspan="8" style="text-align: right;"><strong>Tổng số tiền:</strong></td>
                        <td><strong><%= tongtien %></strong></td>
                    </tr>
                </table>
            <% 
                } 
            %>
            <div class="back-button">
                <a href="javascript:history.back()">Quay lại</a>
            </div>
        </div>
<%
} else {
out.println("<p class='error-message'>Bạn chưa đăng nhập!</p>");
}
%>
    </body>
</html>
