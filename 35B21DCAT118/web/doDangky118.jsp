<%-- 
    Document   : doDangky118
    Created on : 31 Oct 2024, 15:35:09
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,java.time.LocalDate,dao.*,model.*"%>

<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    String name = (String)request.getParameter("ten");
    
    String ns = (String)request.getParameter("ngaysinh");
    LocalDate ngaysinh = LocalDate.parse(ns);
    
    String email = (String)request.getParameter("email");
    String sdt = (String)request.getParameter("sdt");
    String diachi = (String)request.getParameter("diachi");
    int vaitro = 2;
 
    Thanhvien118 tv = new Thanhvien118(username, password, name, ngaysinh, email, sdt, diachi, vaitro);
    Thanhvien118DAO dao = new Thanhvien118DAO();
    int kq = dao.kiemtraThanhvien(tv);
    if(kq == 0){
        boolean result = dao.newThanhvien(tv);
        if (result){
            response.sendRedirect("GDDangky118.jsp?err=success");
        }
        else{
            response.sendRedirect("GDDangky118.jsp?err=fail");
        }
    }
    else {
        response.sendRedirect("GDDangky118.jsp?err=fail");
    }
%>