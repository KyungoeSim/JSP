<%@page import="jdbc.feedDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String id = (String) session.getAttribute("id");

	out.print(feedDAO.getmylist(id));
%>