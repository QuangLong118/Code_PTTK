<%-- 
    Document   : GDDangky118
    Created on : 31 Oct 2024, 15:23:01
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            h2 {
                color: #333;
                text-align: center;
            }
            h4 {
                color: red;
                text-align: center;
                margin-bottom: 20px;
            }
            form {
                background-color: #fff;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                padding: 20px 40px;
                width: 350px;
            }
            .form-group {
                margin-bottom: 15px;
            }
            label {
                font-weight: bold;
                margin-bottom: 5px;
                display: block;
                color: #555;
            }
            input[type="text"], input[type="password"], input[type="email"], input[type="tel"], input[type="date"] {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-sizing: border-box;
                font-size: 14px;
            }
            input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus, input[type="tel"]:focus, input[type="date"]:focus {
                border-color: #007bff;
                outline: none;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }
            .buttons {
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
            }
            .buttons button {
                width: 48%;
                padding: 10px;
                font-size: 16px;
                font-weight: bold;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .buttons button[type="submit"] {
                background-color: #28a745;
            }
            .buttons button[type="button"] {
                background-color: #dc3545;
            }
            .buttons button[type="submit"]:hover {
                background-color: #218838;
            }
            .buttons button[type="button"]:hover {
                background-color: #c82333;
            }
            .success-message {
                color: #28a745;
                background-color: #d4edda;
                padding: 10px;
                border: 1px solid #c3e6cb;
                border-radius: 5px;
                text-align: center;
                margin-bottom: 15px;
            }
            .form-container {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
        </style>
    </head>
    <body>
        <div class="form-container">
            <%
                if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
            %>
                <h4 class="error-message">Tên tài khoản hoặc mật khẩu không hợp lệ!</h4>
            <%
                } else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("success")){
            %>
                <div class="success-message">Đăng ký thành công!</div>
            <%
                }
            %> 
            <form action="doDangky118.jsp" method="post">
                <h2>Đăng ký tài khoản</h2>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="ten">Tên:</label>
                    <input type="text" id="ten" name="ten" required>
                </div>
                <div class="form-group">
                    <label for="ngaysinh">Ngày sinh:</label>
                    <input type="date" id="ngaysinh" name="ngaysinh" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="sdt">SĐT:</label>
                    <input type="tel" id="sdt" name="sdt" required>
                </div>
                <div class="form-group">
                    <label for="diachi">Địa chỉ:</label>
                    <input type="text" id="diachi" name="diachi" required>
                </div>
                <div class="buttons">
                   <button type="button" onclick="window.location.href='GDTrangchu118.jsp'">Quay lại</button>
                    <button type="submit">Đăng ký</button>
                </div>
            </form>
        </div>  
    </body>
</html>
