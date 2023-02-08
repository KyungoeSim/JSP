<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Step 1 import SQL Packages  -->
<%@ page import = "java.sql.*" %>
<%@ page import = "jdbc6step.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

<%

	Connection conn = dbconnclose.getConnection();

// 4 create Statement Object

	PreparedStatement pstmt = conn.prepareStatement("CREATE DATABASE test5");

// 5 execute SQL Query
	
 	pstmt.executeUpdate();
	
	dbconnclose.closeConnection(pstmt, conn);
%>

</body>
</html>





