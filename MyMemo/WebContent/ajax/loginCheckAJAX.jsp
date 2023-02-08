<%@page import="java.net.URLDecoder"%>
<%@page import="jdbc.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%

	request.setCharacterEncoding("utf-8");
	
	String id = URLDecoder.decode(request.getParameter("id")); // URLDecoder.decode 한글 깨져서
	String password = URLDecoder.decode(request.getParameter("password"));
	
	userDAO.login(id, password); 
%>
