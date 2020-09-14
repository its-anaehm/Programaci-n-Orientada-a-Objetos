<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "unidad1.User"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Página de servicio</title>
	</head>
	<body>
		<%
			if(request.getParameter("fullName") != null &&
				request.getParameter("age") != null &&
				request.getParameter("fullName").trim().matches("^([A-ZÁÉÍÓÚ][a-záéíóú]{2,})( [A-ZÁÉÍÓÚ][a-záéíóú]{2,}){1,3}$") &&
				request.getParameter("age").trim().matches("^(1[6-9])|([2-9]\\d)$")
				){
				//El parámetro es válido
				String fullName = request.getParameter("fullName");
				int age = Integer.parseInt(request.getParameter("age"));
				
				//Crear una instancia de usuario
				User user = new User(age, fullName);
				
				//..
				out.print("<span style=color:green;>Los parámetros son válidos</span>");
				
			}else{
				out.print("<span style=color:red;>Los parámetros no son válidos</span>");
			}
			
		%>
	</body>
</html>