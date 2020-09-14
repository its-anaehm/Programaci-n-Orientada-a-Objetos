<%@page import="unidad2.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    User user = new User();
    user.setName("Programación Objetos");
    user.setPassword("qwer123");
    
    session.setAttribute("user",user);
    session.setAttribute("form","");
    session.setAttribute("temporal","");
    session.setAttribute("shop","");
    
    response.sendRedirect("page2.jsp");
    %>