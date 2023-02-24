<%@page import="jdbc.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int gno = Integer.parseInt( request.getParameter("gno") );
	
	GalleryDAO.delete(gno);
	response.sendRedirect("gallery.jsp");
%>