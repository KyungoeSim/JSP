<%@page import="java.net.URLDecoder"%>
<%@page import="jdbc.feedDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	

	String id = request.getParameter("id");
	String content = request.getParameter("content");
	
	out.print(feedDAO.insert(id, content));
%>