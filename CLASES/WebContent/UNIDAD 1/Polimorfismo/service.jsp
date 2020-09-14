<%@page import="unidad1.Rectangle"%>
<%@page import="unidad1.Validator"%>
<%@page import="unidad1.Point"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="name" content="swd">
		<meta name="description" content="Polimorfismo y Recursividad">
		<title>IPolimorfismo y recursividad</title>
	</head>
	<body>
	
	<%
		/*
			Haga un programa en Java que puede crear una figura rectangular
			usando la etiqueta div de HTML.
			Usando la propiedad polimórfica de la OO, la figura se puede crear
			mediante:
				1) Punto de orígen, altura, anchura.
					Se admiten máximo 3 parámetros.
						point = 345,435
						h = 4556
						w = 4564
				2) Punto origen, punto destino.
					Se admiten máximo 2 parámetros.
						pointA = 1,3
						pointB = 7,7
			Una vez finalizado el ejercicio, haga que el programa pueda definir
			paramétricamente el color de la figura.
		
		*/
			int zIndex = 0;
			Validator validator = new Validator();
			String color;
			if(request.getParameter("color") != null){
				color = validator.color(request.getParameter("color").toString());
			}else{
				color = "white";
			}
		
		if( request.getParameter("point") != null &&
				request.getParameter("h") != null &&
				request.getParameter("w") != null){
			
			
			Point p = new Point(request.getParameter("point").toString());
			int h = validator.maxInt(request.getParameter("h").toString(),0,100);
			int w = validator.maxInt(request.getParameter("w").toString(),0,100);
			
			
			Rectangle rectangle = new Rectangle();
			
			out.print(rectangle.draw(p,h,w,color, zIndex));
		
		}else if(request.getParameter("pointA") != null && 
				request.getParameter("pointB") != null &&
				request.getParameter("pointA").toString().trim().matches("\\d+,\\d+") &&
				request.getParameter("pointB").toString().trim().matches("\\d+,\\d+")
				){
			
			Point pointA = new Point(request.getParameter("pointA").toString());
			Point pointB = new Point(request.getParameter("pointB").toString());
			
			Rectangle rectangle = new Rectangle();
			
			out.print(rectangle.draw(pointA, pointB, color, zIndex));
			
		}
	
	%>
	
	</body>
</html>