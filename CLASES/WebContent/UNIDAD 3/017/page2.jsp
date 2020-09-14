<%@page import="unidad2.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    User user = (User) session.getAttribute("user");
    
    session.removeAttribute("user");
    session.removeAttribute("form");
    session.removeAttribute("temporal");
    session.removeAttribute("shop");
    
    %>
    Bienvenido <%=user.getName()%>