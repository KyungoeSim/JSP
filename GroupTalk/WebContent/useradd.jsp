<%@page import="java.net.URLDecoder"%>
<%@page import="jdbc.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	

	String id = request.getParameter("id");
	
	out.print(userDAO.insertadmin(id));
%>