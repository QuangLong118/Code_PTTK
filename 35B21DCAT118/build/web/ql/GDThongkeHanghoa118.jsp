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
                text-align: center;
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
            <h1>Thống kê hàng hóa</h1>
            <%
                ArrayList<ThongkeHanghoa118> listThongkeHanghoa = (ArrayList<ThongkeHanghoa118>) session.getAttribute("ketquathongke");
                if (listThongkeHanghoa == null || listThongkeHanghoa.isEmpty()) {
            %>
                <p>Không có dữ liệu thống kê.</p>
                <div class="back-button">
                    <a href="javascript:history.back()">Quay lại</a>
                </div>
            <% 
                } else { 
            %>
                <div class="date-info">
                    <p>Ngày bắt đầu: <%= session.getAttribute("ngaybd") %> | Ngày kết thúc: <%= session.getAttribute("ngaykt") %></p>
                </div>
                <table>
                    <tr>
                        <th>Mã hàng hóa</th>
                        <th>Tên hàng hóa</th>
                        <th>Đơn giá</th>
                        <th>Số lượng tồn kho</th>
                        <th>Số lượng bán ra</th>
                        <th>Doanh thu</th>
                    </tr>
                    <% 
                        for (ThongkeHanghoa118 thongke : listThongkeHanghoa) {
                            Hanghoa118 hh = thongke.getHh();
                    %>
                    <tr onclick="window.location.href='doThongkeGiaodich118.jsp?id=<%= hh.getId() %>'" style="cursor: pointer;">
                        <td><%= hh.getId() %></td>
                        <td><%= hh.getName() %></td>
                        <td><%= hh.getDongia() %></td>
                        <td><%= hh.getSoluongtrongkho() %></td>
                        <td><%= thongke.getSoluong() %></td>
                        <td><%= thongke.getDoanhthu() %></td>
                    </tr>
                    <% 
                        } 
                    %>
                </table>
                <div class="back-button">
                    <a href="javascript:history.back()">Quay lại</a>
                </div>
            <% 
                } 
            %>
        </div>
<%
} else {
out.println("<p class='error-message'>Bạn chưa đăng nhập!</p>");
}
%>
    </body>
</html>
