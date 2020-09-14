<%@page import="unidad3.Auth"%>
<%@page import="unidad3.User"%>
<%@page import="unidad3.Constants" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    //Se estan usando objetos de la unidad 2
    
    //Controlador de autenticación.
    
    //Se genera una variable generica para el manejo de las respuestas (tanto positivas como negativas)

    String result = String.format("{\"status\":%s,\"message\":%s}",Constants.StatusResult,Constants.MessageResult);
    
    Auth auth = new Auth();
	if(auth.requestIsValid(request)){
		
		
		
		session = auth.create(session, request);
		
		if((boolean)session.getAttribute(Constants.SessionStatusKey)){
				out.print( result
						.replace(Constants.StatusResult,"true")
						.replace(Constants.MessageResult,"\"\"")
					);
			}else{
				out.print(
					result.replace(Constants.StatusResult, "true")
					.replace(Constants.MessageResult,"\"El usuario y/o la contraseña no son válidos\"")
				);				
		}
				
	}else{
		//object.action().action().action().action().action()
		out.print(
			result
				.replace(Constants.StatusResult,"false")
				.replace(Constants.MessageResult,"\"No se han encontrado los parámetros.\"")
		);
		
	}
		
    
    
%>