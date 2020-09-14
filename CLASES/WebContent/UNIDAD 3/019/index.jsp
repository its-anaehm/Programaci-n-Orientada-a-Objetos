<%@page import="java.util.List"%>
<%@page import="unidad3.User"%>
<%@page import="unidad3.Auth"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    //En cada archivo que no es login/logout se debe validar la autenticación, incluyendo vistas y controladores.
    
    
    if(!new Auth().sesssionIsValid(session)) response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="author" content="swd">
		<meta name="description" content="Haga un programa en Java JSP donde usando POO: a) Existe
		un formulario Web. b) Mediante sesiones se pueda guardar un borrador de la infomación
		que tipea el usuario, previo a presionar el botón enviar.">
		<title>Guardar borrador temporal del Formulario</title>
	</head>
	<body>
		<form onsubmit="store();return false;">
		
			<input type="text" id="userName" onkeyup="change(this);" placeholder="Escriba su nombre."><br>
			<input type="text" id="userAge" onkeyup="change(this);" placeholder="Escriba su edad."><br>
			<input type="text" id="userID" onkeyup="change(this);" placeholder="Escriba su identidad"><br>
			<textarea id="userDescription" onkeyup="change(this);" cols="60" rows="10"></textarea>
			<button type="submit">Enviar</button>
			
		</form>
		
		<script src='../../jquery-3.4.1.min.js'></script>
		<script src="scripts/script.js"></script>
		<script src="scripts/ErrorManager.js"></script>
		
	</body>
</html>