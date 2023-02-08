<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Step 1 import SQL Packages  -->
<%@ page import="java.sql.*" %>
   
<% // 전송 받는 데이터 한글 처리 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//Step 2 load JDBC Driver
	try {
		Class.forName("com.mysql.jdbc.Driver");
	}catch(ClassNotFoundException err) {
		out.print("JDBC Driver loading error<br>" + err.getMessage());
	}

// Step 3 create Connection Object 

	Connection conn = null;

	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/univ","root","0000");
	}catch(SQLException err) {
		out.print("Connection Object error<br>" + err.getMessage());
	}

// Step 4 create Statement Object
		
		String hakbun = request.getParameter("hakbun");

		String sql = "SELECT * FROM student WHERE hakbun = ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hakbun);


// Step 5 excute SQL Query

		/* 	pstmt.executeUpdate(); */
		ResultSet rset = pstmt.executeQuery();
		
		//DB에서 학번에 해당하는 자료가 있어서 반환되었는지 확인
		//만약에 가져온값이 없으면
		if(!rset.isBeforeFirst()){
			out.print("<script>alert('해당 학번은 존재하지 않습니다.');" + "history.back();"+"</script>");
			return;
		}
		
		//DB에 있는 경우
		rset.next();
		//DB에서 뽑아온 학번
		String dbhakbun  = rset.getString("hakbun");
		String dbname  = rset.getString("name");
		
		//dbhakbun hakbun 값이 같으면 세션을 생성하세요
		//"hakbun" dbhakbun "name" dbname
		
		//문자열 값을 비교할 때는 반드시 .equals() / 숫자비교는 ==
		if(dbhakbun.equals(hakbun)){
			
			session.setAttribute("hakbun" , dbhakbun); //세션생성
			session.setAttribute("name" , dbname);
			
			out.print(session.getAttribute("hakbun")+"("+ session.getAttribute("name")+")님 방문을 환영합니다. <br>");
					
		}
		

//Step 6 Close Connection
			rset.close();
			pstmt.close();
			conn.close();
		%>


</body>
</html>



