<%@ page import="unidad3.Constants" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
    String[] call = new String[]{"sh","SubProcess/run.sh","subProcess/result.txt","Hola mundo","9"};
    
    String result = String.format("{\"status\":%s,\"message\":%s}",Constants.StatusResult,Constants.MessageResult);
    
    try{
    	
    }catch (Exception ex) {
    	out.print(
    		result.replace(Constants.StatusResult,"false")
    		.replace(Constants.MessageResult,String.format("\"Error. %s\"",ex.toString())
    			)
    		);
    }
    
    %>