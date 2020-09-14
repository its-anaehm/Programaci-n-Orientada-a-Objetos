<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="author" content="swd">
		<meta name="description" content="Uso de sesiones en al web">
		<title>Uno se sesiones en la web</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<h1>Bienvenido</h1>
		<p>Bienvenido <strong><%=session.getAttribute("userName")%></strong> al sistema.</p>
		
		<div class="centerPage bigSize red">
		<%
			int count = 1;
			if(session.getAttribute("count")!= null){
				if(session.getAttribute("count").getClass().getSimpleName().equals("Integer")){
					count = (int) session.getAttribute("count");
					count++;
					session.setAttribute("count",count);
				}else{
					session.setAttribute("count",1);
				}
			}else{
				session.setAttribute("count",count);
			}
		%>
		<%=count%>
		</div>
		
	</body>
</html>