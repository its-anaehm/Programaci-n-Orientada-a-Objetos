<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="unidad2.NameProcessor" %>
<%
	if(request.getParameter("name") != null &&
		request.getParameter("name").toString().trim().matches("^([A-ZÁÉÍÓÚ][a-záéíóú]{2,})( [A-ZÁÉÍÓÚ][a-záéíóú]{2,}){1,3}$")){
		
		
		response.sendRedirect(String.format("success.jsp?result=%s",NameProcessor.process(request.getParameter("name").toString())));
	}else{
		response.sendRedirect("error.jsp");
	}

%>