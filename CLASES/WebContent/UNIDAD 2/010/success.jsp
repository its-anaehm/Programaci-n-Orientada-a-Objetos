<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="swd">
<meta name="description" content="Validaciones en FrontEnd con POO">
<title>Success</title>
</head>
<body>
<%
	if(request.getParameter("result") != null){
		out.print(request.getParameter("result").toString());
	}else{
		response.sendRedirect("error.jsp");
	}

%>
</body>
</html>