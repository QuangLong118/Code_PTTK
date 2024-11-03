<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chọn Thời Gian Thống Kê</title>
    <style>
        /* Reset và căn chỉnh toàn bộ trang */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f7f7fc;
            font-family: 'Roboto', sans-serif;
            color: #333;
        }

        /* Header styling */
        h1 {
            color: #4a4a4a;
            margin-bottom: 25px;
            font-size: 28px;
            font-weight: bold;
            text-align: center;
        }

        /* Form container */
        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0px 6px 16px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Date input group */
        .date-input {
            display: flex;
            align-items: center;
            gap: 10px;
            width: 100%;
        }

        label {
            font-size: 16px;
            color: #555;
            min-width: 110px;
            text-align: right;
            font-weight: 500;
        }

        input[type="date"] {
            padding: 10px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            color: #333;
            outline: none;
            transition: border-color 0.3s ease;
        }

        input[type="date"]:focus {
            border-color: #4CAF50;
        }

        /* Button styling */
        .button-group {
            display: flex;
            gap: 15px;
            justify-content: center;
            width: 100%;
        }

        .button-group button {
            padding: 12px 28px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            transition: background-color 0.3s, transform 0.2s;
        }

        .submit-btn {
            background-color: #4CAF50; /* Xanh lục */
        }

        .submit-btn:hover {
            background-color: #388E3C;
            transform: scale(1.05);
        }

        .back-btn {
            background-color: #e74c3c;
        }

        .back-btn:hover {
            background-color: #c0392b;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<%
Thanhvien118 tv = (Thanhvien118) session.getAttribute("quanly");      
if (tv != null) {
%>
    <%
        String act = (String) request.getParameter("action");
        String actionUrl = "doThongkeNCC.jsp";
        if ("hanghoa".equalsIgnoreCase(act)) actionUrl = "doThongkeHanghoa118.jsp";
        else if ("hangxuat".equalsIgnoreCase(act)) actionUrl = "doThongkeHangxuat118.jsp";
        else if ("hangnhap".equalsIgnoreCase(act)) actionUrl = "doThongkeHangnhap118.jsp";
        else if ("khachhang".equalsIgnoreCase(act)) actionUrl = "doThongkeKhachhang118.jsp";
    %>
    <form action="<%= actionUrl %>" class="form-container" method="post">
        <h1>Chọn Thời Gian Thống Kê</h1>
        <div class="date-input">
            <label for="startDate">Ngày bắt đầu:</label>
            <input type="date" id="startDate" name="startDate" required>
        </div>
        <div class="date-input">
            <label for="endDate">Ngày kết thúc:</label>
            <input type="date" id="endDate" name="endDate" required>
        </div>
        <div class="button-group">
            <button type="button" class="back-btn" onclick="location.href='GDThongke118.jsp'">Quay lại</button>
            <button type="submit" class="submit-btn">Xem thống kê</button>
        </div>
    </form>
<%
} else {
out.println("<p class='error-message'>Bạn chưa đăng nhập!</p>");
}
%>
</body>
</html>
