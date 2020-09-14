<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="author" content="swd">
		<meta name="description" content = "Unificación de temas del 2do parcial">
		<title>Unificación de temas del 2do parcial</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<form onsubmit="return validation();">
		
			<input type="text" name="user" id="user" placeholder="Nombre de usuario"><br>
			<input type="password" name="password" id="password" placeholder="Ingrese su contraseña"><br>
			<button type="submit">Ingresar</button>
		</form>
		<script src="script.js"></script>
		<script src="ErrorManager.js"> </script>
		<script src="../../jquery-3.4.1.min.js"></script>
	</body>
</html>