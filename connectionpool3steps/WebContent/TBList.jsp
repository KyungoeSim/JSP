<%@ page import="jdbc.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
<%
		ArrayList<StudentDTO> students = StudentDAO.getList();
			

		for(StudentDTO student : students){
		%>
		
		<!-- 메서드로 뽑아냄 -->
		<a href = "TBDetail.jsp?hakbun=<%=student.getHakbun() %>"><%=student.getHakbun() %></a>| 
		<%=student.getName()  %><br>

		<% 	
			}
		%>


</body>
</html>



