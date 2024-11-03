<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <style>
        /* CSS cho giao diện đăng nhập */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .error-message {
            color: #ff6347;
            margin-bottom: 15px;
            font-weight: bold;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        label {
            text-align: left;
            color: #333;
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .back-button,
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-align: center;
        }

        .back-button {
            background-color: #dc3545;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #c82333;
        }

        input[type="submit"] {
            background-color: #007bff;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {
        %>
            <h4 class="error-message">Hết phiên làm việc. Làm ơn đăng nhập lại!</h4>
        <%
            } else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
        %>
            <h4 class="error-message">Sai tên đăng nhập/mật khẩu!</h4>
        <%
            }
        %>
        <h2>Đăng Nhập</h2>
        <form name="dangnhap" action="doDangnhap118.jsp" method="post">
            <label for="username">Tên đăng nhập:</label>
            <input type="text" name="username" id="username" required />

            <label for="password">Mật khẩu:</label>
            <input type="password" name="password" id="password" required />

            <div class="button-container">
                <a href="GDTrangchu118.jsp" class="back-button">Quay Lại</a>
                <input type="submit" value="Đăng Nhập" />
            </div>
        </form>
    </div>
</body>
</html>
