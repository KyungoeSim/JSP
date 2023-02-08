<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String btitle = request.getParameter("btitle");
	String bwriter = "작성자";
	String bcontent = request.getParameter("bcontent");
	
	int result = BoardDAO.insert(btitle, bwriter, bcontent);
	
	if(result == 1){
		out.print("등록성공");
	}else{
		out.print("등록 실패");
	
	}


%>