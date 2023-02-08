<%@ page import="jdbc.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String hakbun = request.getParameter("hakbun");	

		StudentDTO student = StudentDAO.getDetail(hakbun);
			

		%>
		
		<%=student.getHakbun()  %><br>
	    <%=student.getName()  %><br>
		<%=student.getDept()  %><br>
		<%=student.getAddr()  %><br>
		

</body>
</html>