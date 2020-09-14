<%@page import="unidad2.User"%>
<%@page import="java.util.List"%>
<%@page import="unidad2.FileManager"%>
<%@page import="unidad2.Auth"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%/*
    if(
    		request.getParameter("option") != null &&
    		request.getParameter("option").toString().trim().matches("(auth)|(record)|(isauth)")		
    ){	
    if( request.getParameter("option").toString().trim().matches("^isauth$")  &&
    	request.getParameter("user") != null
    		){	
    	//Se asumen que cooke solo tiene una única variable llamada auth=
    	String fileName = String.format("%s.auth",request.getParameter("user").toString().trim().replace("auth=",""));
    	FileManager fm = new FileManager();
    	String content = fm.read(fileName).trim();
		String result = String.format("{\"status\":false,\"message\":\"el usuario y o contraseña no son válidos.\"}");
		
    	
    	
    }
    }else    
    	if( request.getParameter("option").toString().trim().matches("^auth$" ) &&
    		request.getParameter("name") != null &&
    		request.getParameter("password") != null

    	){
    		String result = String.format("{\"status\":false,\"message\":\"el usuario y o contraseña no son válidos.\"}");
    		String name = request.getParameter("name").toString().trim();
    		String password = request.getParameter("password").toString().trim();
    		List<User> userList = Auth.readList("auth.csv");
    		
    		
    		for(User user: userList){
    			//Forma incorrecta
    			//if(user.getName() == name && user.getPassword() == password){
    			if(user.validate(name,password)){
    				//Simulación de la cración del estado de la autenticación de usuario.
    				//Al finalizar la materia se prodrá realizar esta función usando Sesiones.
    				//En el segundo paracial del POO PAC I 2020, se aplicará una simulación usando archivos.
    				FileManager fm = new FileManager();
    				fm.create(String.format("%s.auth",user.getName()),"true");
    				result = String.format("{\"status\":true,\"message\":\"\"}");
    				break;
    			}
   			}
    		out.print(result.toString());
    		
		}else if(
    		request.getParameter("option").toString().trim().matches("record")
    	){
    		
    	}
    		
    }else{
   
  			out.print("{\"status\":false,\"message\":\"La petición solicitadoa no es válida.\"}");
    	
    }
    
    */%>