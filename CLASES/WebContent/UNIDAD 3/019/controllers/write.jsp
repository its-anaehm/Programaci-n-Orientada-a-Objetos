<%@page import="unidad3.Form019"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    if (
   		request.getParameter("name") != null &&
   		request.getParameter("age") != null &&
   		request.getParameter("id") != null &&
   		request.getParameter("description") != null
    	){
    	
    	String name = request.getParameter("name").toString();
    	String age = request.getParameter("age").toString();
    	String id = request.getParameter("id").toString();
    	String description = request.getParameter("description").toString();
    	
    	Form019 form = new Form019();
    	form.setName(name);
    	form.setAge(age);
    	form.setId(id);
    	form.setDescription(description);
    	
    	session.setAttribute("form",form);
    	
    	out.print("{\"status\":true}");
    }else{
		
    	out.print("{\"status\":false}");
    	
    }
    	
    	
    
    %>