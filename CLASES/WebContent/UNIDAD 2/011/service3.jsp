<%@page import="unidad2.Factorial"%>
<%@page import="unidad2.FileManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%
	FileManager fm = new FileManager();
	Factorial f = new Factorial();
	
	if(request.getParameter("n") != null && request.getParameter("n").toString().trim().matches("^(\\d)$|^([0-6]\\d)$")){
		int n = Integer.parseInt(request.getParameter("n").toString().trim());
		
		int factorialN = f.calc(n);
		
		fm.write("factorial.txt", String.format("%s<br>%s",fm.read("factorial.txt"),factorialN));
		
		response.sendRedirect(String.format("final.jsp?n=%s",n-1));
		
	}
%>