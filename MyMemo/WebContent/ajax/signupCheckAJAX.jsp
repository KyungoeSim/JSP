<%@page import="java.net.URLDecoder"%>
<%@page import="jdbc.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%

	request.setCharacterEncoding("utf-8");
	
	String id = URLDecoder.decode(request.getParameter("id")); // URLDecoder.decode 한글 깨져서
	String password = URLDecoder.decode(request.getParameter("password"));
	String name = URLDecoder.decode(request.getParameter("name"));
	
	userDAO.insert(id, password, name); 
%>


</body>
</html>