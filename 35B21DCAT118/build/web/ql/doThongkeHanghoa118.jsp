<%-- 
    Document   : doThongkeHanghoa118
    Created on : 31 Oct 2024, 21:04:49
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,java.util.Collections,java.util.Comparator,java.time.LocalDate,dao.*,model.*"%>
<%  
    String nbd = (String)request.getParameter("startDate");
    LocalDate ngayBD = LocalDate.parse(nbd);
    String nkt = (String)request.getParameter("endDate");
    LocalDate ngayKT = LocalDate.parse(nkt);
    
    ThongkeHanghoa118DAO TKhhdao = new ThongkeHanghoa118DAO();
    ArrayList<ThongkeHanghoa118> listThongkeHanghoa = TKhhdao.getlistTKHanghoa(ngayBD,ngayKT);
    
    session.setAttribute("ketquathongke", listThongkeHanghoa);
    session.setAttribute("ngaybd", ngayBD);
    session.setAttribute("ngaykt", ngayKT);
    response.sendRedirect("GDThongkeHanghoa118.jsp");
%>
