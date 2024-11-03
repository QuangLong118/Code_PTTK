<%-- 
    Document   : GDTrangchu118
    Created on : 29 Oct 2024, 23:48:24
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Chiều cao của toàn bộ màn hình */
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 40px; /* Padding cho form */
            width: 350px; /* Đặt chiều rộng của form */
            text-align: center; /* Căn giữa nội dung trong form */
        }

        h1 {
            color: #333; /* Màu chữ tiêu đề */
            margin-bottom: 30px; /* Khoảng cách dưới tiêu đề */
        }

        .button {
            padding: 15px 30px;
            text-align: center;
            text-decoration: none;
            color: #fff; /* Màu chữ */
            border-radius: 5px; /* Bo tròn góc nút */
            transition: background-color 0.3s;
            cursor: pointer;
            font-size: 16px;
            border: none;
            margin: 10px 0; /* Khoảng cách giữa các nút */
            width: 100%; /* Nút chiếm toàn bộ chiều rộng của form */
        }

        .button-login {
            background-color: #007bff; /* Màu nền nút Đăng Nhập */
        }

        .button-login:hover {
            background-color: #0056b3; /* Màu nền khi di chuột qua nút Đăng Nhập */
        }

        .button-register {
            background-color: #28a745; /* Màu nền nút Đăng Ký */
        }

        .button-register:hover {
            background-color: #218838; /* Màu nền khi di chuột qua nút Đăng Ký */
        }
    </style>
</head>
<body>
    <div class="container">
        <form>
            <h1>Shop Man</h1>
            <button type="submit" formaction="GDDangnhap118.jsp" class="button button-login">Đăng Nhập</button>
            <button type="submit" formaction="GDDangky118.jsp" class="button button-register">Đăng Ký</button>
        </form>
    </div>
</body>
</html>
