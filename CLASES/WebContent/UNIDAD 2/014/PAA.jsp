<%@page import="unidad2.PAA"%>
<%@page import="unidad2.FileManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    	//Se aplicará esta solución hasta que se haga uso de las sesiones
    	/*FileManager fm = new FileManager();
    	String[] fileNames = fm.read("fileList.txt").split("\n");
    	for(String file : fileNames){
    		
    	}*/
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="author" content="swd">
		<meta name="description" content="Implementar la instancia con uso de interfaces">
		<title>Implementar la instancia con uso de interfaces.</title>
	</head>
	<body>
	<%
		PAA quiz = new PAA();
		out.print(quiz.print(""));
		
	%>
	
	</body>
	<script src="Inportarjquery" ></script>
	<script>
	
		$.post("service.jsp",{"option":"isauth","user":document.cookie},function(data){
			data = JSON.parse(`\${data}`.trimm());
			if(data.status){
				
			}else{
				location="index.jsp";
			}
			
		})
	
	</script>
</html>