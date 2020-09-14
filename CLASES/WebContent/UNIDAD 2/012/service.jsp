<%@page import="unidad2.Factorial"%>
<%@page import="unidad2.Fibonacci"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><% //Es importante quitar el salto de linea que deberia ir aqui
if(request.getParameter("option") != null){
	if(request.getParameter("option").matches("fibonacci") &&
			request.getParameter("n") != null &&
			request.getParameter("n").toString().trim().matches("\\d")
			){
		
		int n = Integer.parseInt(request.getParameter("n").toString().trim());
		Fibonacci fib = new Fibonacci();
		out.print(String.format("{\"error\":false,\"operation\":\"fibonacci\",\"n\":%s,\"description\":%s}",n,fib.calc(n)));	
		
	}else
	if(request.getParameter("option").matches("factorial") &&
			request.getParameter("n") != null &&
			request.getParameter("n").toString().trim().matches("\\d")
			){
		int n = Integer.parseInt(request.getParameter("n").toString().trim());
		Factorial fac = new Factorial();
		out.print(String.format("{\"error\":false,\"operation\":\"factorial\",\"n\":%s,\"description\":%s}",n,fac.calc(n)));
	}else{
	}
}else{
		out.print("{\"error\":true,\"description\":\"No se encontro la variable 'option'\"}");
}

%>
