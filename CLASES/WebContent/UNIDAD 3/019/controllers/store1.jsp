<%@page import="unidad2.User"%>
<%@page import="unidad3.Form019"%>
<%@page import="unidad2.FileManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
	
    String statusResult = "#STATUS";
    String messageResult = "#MESSAGE#";   
    String result = String.format("{\"status\":%s,\"message\":%s}",statusResult,messageResult);
    
    
    //Se agrega la noción de validación de usuario. pero no se a verificado al usuario en el archivo de autencación
    if(
    	session.getAttribute("019_auth") != null &&
    	session.getAttribute("019_auth").getClass().getSimpleName().equals("User")
    	
    ){
    	if(
    		session.getAttribute("form") != null &&
    		session.getAttribute("form").getClass().getSimpleName().equals("Form019")
    	){
    		User user = (User) session.getAttribute("019_auth");
    		
    		Form019 form = (Form019) session.getAttribute("form");
    		
    		FileManager fm = new FileManager();
    		
    		fm.create(String.format("%s.json",user.getName()),
    					String.format(
    							"{\"name\":\"%s\", \"age\":\"%s\", \"id\":\"%s\", \"description\":\"%s\"}",
    							form.getName(),
    							form.getAge(),
    							form.getId(),
    							form.getDescription()
   							)	    				
    				);
    		
    		
    		out.print(
    	    		result
    	    		.replace(statusResult,"true")
    	    		.replace(messageResult,"\"se ha guardado satisfactoriamente la información.\"")
    	    	);
    		
    		
    	}else{
    		out.print(
    	    		result
    	    		.replace(statusResult,"false")
    	    		.replace(messageResult,"\"No se ha encontrado un formulario\"")
    	    	);
    	}
    	
    	
    }else{
    	out.print(
    		result
    		.replace(statusResult,"false")
    		.replace(messageResult,"\"No se ha agregado un usuario autenticado\"")
    	);
    }

    
    %>