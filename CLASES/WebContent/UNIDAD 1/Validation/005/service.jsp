<%@page import="unidad1.ResponseParameterManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "unidad1.ParameterManager"
    import = "Unidad1.ResponseParameterManager"
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Página de servicio</title>
	</head>
	<body>
		<%
			ParameterManager pm = new ParameterManager();
			ResponseParameterManager rpm = pm.analize(request.getParameterMap());
			out.print(pm.convertResponseToHTML(rpm));
			
		%>
	</body>
</html>