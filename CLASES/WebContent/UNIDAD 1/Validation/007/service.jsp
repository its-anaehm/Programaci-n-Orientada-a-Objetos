<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "unidad1.Validator"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Página de servicio</title>
	</head>
	<body>
		<%
		if(request.getParameter("userName") != "" && request.getParameter("age") != ""){
			Validator validator = new Validator();
			int age = validator.cleanAge(request.getParameter("age"));
			String userName = validator.cleanUserName(request.getParameter("userName"));
			
			out.print("<span style='color:green;'>Los parámetros son válidos</span><br>");
			out.print(String.format("<strong>Nombre de usuario: </strong>%s<br>",userName));
			out.print(String.format("<strong>Edad de usuario: </strong>%s",age));
		}else{
			out.print("<span style='color:red;'>Los parámetros son inválidos</span>");
		}
			
		%>
	</body>
</html>