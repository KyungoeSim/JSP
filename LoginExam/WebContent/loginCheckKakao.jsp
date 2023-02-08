<%@ page import="jdbc.*"%>
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
	request.setCharacterEncoding("utf-8");	

	String mname = request.getParameter("mname");
	String memail = request.getParameter("memail");
	String mgender = request.getParameter("mgender");

//우리 DB에 해당 회원이 존재하는지 여부 확인 exist 메서드로 확인 후
//존재하면0, 세션처리(로그인상태)
//디비에 존재하지 않으면 회원가입 페이지로 이동 가입 유도

int result = memberDAO.exist(memail);

if (result == 0) {
	out.print("로그인 성공"); 
} else {
	response.sendRedirect("signupForm.jsp?mname=" + java.net.URLEncoder.encode(mname) + "&memail="+memail+"&mgender="+mgender);
}

%>
</body>
</html>