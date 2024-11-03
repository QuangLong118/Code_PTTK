<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
        import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Shopman - Quản lý</title>
    <style>
        /* CSS căn giữa trang và tạo kiểu nền */
        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px 40px;
            width: 450px;
        }
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        /* CSS tiêu đề */
        h1 {
            margin-bottom: 20px;
            color: #2e8b57;
            font-size: 26px;
            text-align: center;
        }

        /* CSS cho thông tin và thông báo */
        p {
            color: #333;
            font-size: 18px;
            margin: 5px 0;
            text-align: center;
        }

        .error-message {
            color: #ff6347;
            font-weight: bold;
            text-align: center;
            margin-top: 15px;
        }

        /* CSS cho các nút */
        button {
            padding: 12px 25px;
            font-size: 16px;
            margin: 8px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Màu sắc và hiệu ứng hover */
        .thongke {
            background-color: #4CAF50;
        }

        .quanly {
            background-color: #2196F3;
        }

        .dangxuat {
            background-color: #FF6347;
        }

        .thongke:hover {
            background-color: #45a049;
        }

        .quanly:hover {
            background-color: #1e88e5;
        }

        .dangxuat:hover {
            background-color: #e55342;
        }

        /* Căn giữa container của các nút */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form>
        <h1>Quản lý!</h1>
        <%
            Thanhvien118 tv = (Thanhvien118) session.getAttribute("quanly");
            
            if (tv != null) {
                out.println("<p>Xin chào, " + tv.getName() + "!</p>");
        %>
        <!-- Các nút bấm nằm trong container để căn giữa -->
        <div class="button-container">
            <button class="thongke" type="button" onclick="window.location.href='GDThongke118.jsp'">Thống kê</button>
            <button class="quanly" type="button" onclick="window.location.href='GDQuanly118.jsp'">Quản lý</button>
            <button class="dangxuat" type="button" onclick="window.location.href='../GDTrangchu118.jsp?logout=true'">Đăng xuất</button>
        </div>
        <%
            } else {
                out.println("<p class='error-message'>Bạn chưa đăng nhập!</p>");
            }

            // Handle logout request
            String logout = request.getParameter("logout");
            if ("true".equals(logout)) {
                session.removeAttribute("quanly"); // Remove "quanly" attribute from session
                response.sendRedirect("GDTrangchu118.jsp"); // Redirect to the homepage
            }
        %>
    </form>
</body>
</html>
