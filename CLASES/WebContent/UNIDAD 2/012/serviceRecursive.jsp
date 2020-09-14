<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="unidad1.Rectangle" %>
<%@page import="unidad1.Validator" %>
<%@page import="unidad1.Point" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="author" content="swd">
		<meta name="descriptio" content="Polimorfismo y recursividad">
		<title>Polimorfismo y recursividad</title>
	</head>
	<body>
		<%
			/*
			Resuelve el progama usando recursividad.
			-----------------------
				Haga un programa en Java que puede crear una figura rectangular
				usando la etiqueta div de HTML.
				Usando la propiedad polimórfica de la OO, la figura se puede crear
				mediante:
					1) Punto de orígen, altura, anchura.
						Se admiten máximo 3 parámetros.
							point = 345, 345
							h = 3245
							w = 34534
					2) Punto origen, punto destino.
						Se admiten máximo 2 parámetros.
							point = 1,3
							point = 7,7
				Una vez finalizado el ejercicio, haga que el 
				programa pueda definir paramétricamente el color de la figura.
			
			*/
		
			Rectangle rectangle = new Rectangle();
			/*out.print(rectangle.draw(new Point("0,0"), 40, 40, "red", 5, 5))*/
			
			String[] colors = new String[]{"red", "blue", "green", "brown", "black"};
			int times = 46;
			
			for(int i = 0; i<times; i++){
				out.print(rectangle.draw(new Point(String.format("%s,%s",i,i)), 40, 40, colors[i%colors.length], times-i));
			}
			
			
		%>	
	</body>
</html>