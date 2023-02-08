<%@ page import = "jdbc.*"%>
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
	String mid = request.getParameter("mid");
	String mpass = request.getParameter("mpass");

	
	int result = memberDAO.login(mid, mpass);
	
	if(result == 0){ //로그인 성공, 세션 생성 후 메인으로 이동
		session.setAttribute("mid", mid);
		response.sendRedirect("main.jsp");

	}else if(result == 1){ //DB에 정보가 없다 회원 가입 페이지로 이동
		response.sendRedirect("signupForm.jsp");
	}else {
		response.sendRedirect("login.jsp"); //비번이 틀린 경우 다시 로그인 페이지로 이동
		
	}
%>

</body>
</html>