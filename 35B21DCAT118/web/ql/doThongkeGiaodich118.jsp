<%-- 
    Document   : doThongkeHanghoa118
    Created on : 31 Oct 2024, 21:04:49
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList,java.util.Collections,java.util.Comparator,java.time.LocalDate,dao.*,model.*"%>
<%  
    int id = Integer.parseInt(request.getParameter("id"));
    ThongkeGiaodich118DAO TKGDdao = new ThongkeGiaodich118DAO();
    
    Hanghoa118 hh = TKGDdao.getHanghoaById(id);
    
    LocalDate ngayBD = (LocalDate) session.getAttribute("ngaybd");
    LocalDate ngayKT = (LocalDate) session.getAttribute("ngaykt");
    
    ArrayList<ThongkeGiaodich118> listTKGiaodich = TKGDdao.getlistTKGiaodich(hh,ngayBD,ngayKT);
 
    session.setAttribute("hanghoa", hh);
    session.setAttribute("chitietgiaodich", listTKGiaodich);
    response.sendRedirect("GDThongkeGiaodich118.jsp");
%>
