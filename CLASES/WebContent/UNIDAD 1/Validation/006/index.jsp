<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
 <%
 String user = "Programación Orientada a Objetos";
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="Moisés">
<meta name="description" content="Ejemplo de formulario web">
<!-- Estos son comentarios en HTML, son visibles para el usuario,
No se debe dejar aqui ningun comentario que revele algo que abra
una brecha de seguridad -->
<title>Formulario Web</title>
</head>
	<body>
		<form action="service.jsp" method="GET">
			<!-- Campos de entradas donde el usuario ingresará datos -->
			<!-- submit: Botón de envío de datos -->
			<input type="text" name="fullName" value="<%out.print(user);%>" placeholder="Nombre Completo">
			<br>
			<input type="number" name="age" placeholder="Ingrese su edad" value="" >
			<br>
			<input type="submit" value="Enviar formulario">
		</form>
	</body>
</html>