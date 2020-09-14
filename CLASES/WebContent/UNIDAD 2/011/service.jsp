<%@page import="unidad2.Factorial"%>
<%@page import="unidad2.FileManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%
	FileManager fm = new FileManager();
	Factorial f = new Factorial();
	int factorialN = 5;
	if(request.getParameter("n") != null && request.getParameter("n").toString().trim().matches("^(\\d)$|^([0-6]\\d)$")){
		int n = Integer.parseInt(request.getParameter("n").toString().trim());
		
		factorialN = f.calc(n);
		
		fm.create("factorial.txt", String.format("%s",factorialN));
		
		response.sendRedirect(String.format("service2.jsp?n=%s",n-1));
		
	}
%>