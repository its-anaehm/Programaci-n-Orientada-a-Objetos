<%@page import="unidad1.ParameterManager"%>
<%@page import="unidad1.ResponseParameterManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="author" content="Programación Orientada a Objetos">
		<meta name="description" content="Ejemplo de Validación Usando Objetos">
		<title>Ejemplo</title>		
	</head>
	<body>
		<%
			ParameterManager pm = new ParameterManager();
			ResponseParameterManager rpm = pm.analize(request.getParameterMap());
			out.print(pm.convertResponseToHTML(rpm));
		%>
	</body>
</html>