<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chọn Thống Kê</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
            margin: 0;
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
            text-align: center;
        }
        .form-container {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            width: 100%;
            max-width: 300px;
            text-align: center;
        }
        .button:hover {
            background-color: #45a049;
        }
        .button-red {
            background-color: #f44336;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            width: 100%;
            max-width: 300px;
        }
        .button-red:hover {
            background-color: #d32f2f;
        }
        .welcome-message {
            font-size: 30px;
            margin-bottom: 20px;
            color: blue;
            text-align: center;
        }
        .error-message {
            color: red;
            font-size: 16px;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%
        Thanhvien118 tv = (Thanhvien118) session.getAttribute("quanly");
        
        if (tv != null) {
    %>
    <form class="form-container" method="get" action="GDThoigianThongke118.jsp">
        <h1>Chọn thống kê</h1>
        <button class="button" name="action" value="hangHoa">Thống kê hàng hóa</button>
        <button class="button" name="action" value="hangXuat">Thống kê hàng xuất</button>
        <button class="button" name="action" value="hangNhap">Thống kê hàng nhập</button>
        <button class="button" name="action" value="khachHang">Thống kê khách hàng</button>
        <button class="button" name="action" value="nhaCungCap">Thống kê nhà cung cấp</button>
        <button type="button" class="button-red" onclick="location.href='GDChinhQL118.jsp'">Quay lại</button>
    </form>
    <%
        } else {
            out.println("<p class='error-message'>Bạn chưa đăng nhập!</p>");
        }
    %>
</body>
</html>
