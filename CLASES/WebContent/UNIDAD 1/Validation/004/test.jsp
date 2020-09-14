<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

    out.println(request.getParameter("nomber1"));
    out.println(request.getParameter("a"));
    out.println(request.getParameter("fecha"));
%>
</body>
</html>