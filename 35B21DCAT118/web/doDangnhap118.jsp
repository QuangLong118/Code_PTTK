<%-- 
    Document   : doDangnhap118
    Created on : 30 Oct 2024, 00:23:07
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
//    username = "admin1";
//    password = "password1";
    Thanhvien118 tv = new Thanhvien118();
    tv.setUsername(username);
    tv.setPassword(password);
    Thanhvien118DAO dao = new Thanhvien118DAO();
    int kq = dao.kiemtraThanhvien(tv);
//    int kq = 2;
    if(kq == 2){
        tv = dao.getThanhvienByUsername(username);
        session.setAttribute("quanly", tv);
        response.sendRedirect("ql\\GDChinhQL118.jsp");
    }else if(kq == 4){
        tv = dao.getThanhvienByUsername(username);
        session.setAttribute("nhanvien", tv);
        response.sendRedirect("nv\\GDChinhNV118.jsp");
    }else if(kq ==6){
        tv = dao.getThanhvienByUsername(username);
        session.setAttribute("khachhang", tv);
        response.sendRedirect("kh\\GDChinhKH118.jsp");
    }
    else {
        response.sendRedirect("GDDangnhap118.jsp?err=fail");
    }
%>

