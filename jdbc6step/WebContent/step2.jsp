<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Step 1 import SQL Packages  -->    
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<%
// 2 load JDBC Driver
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}catch(ClassNotFoundException err){
	    out.print("JDBC Driver loading error<br>"+ err.getMessage());		
	}
	// com.mysql.jdbc.Driver mySQL용
	// org.maria.jdbc.Driver maria용 
	
%>
</body>
</html>