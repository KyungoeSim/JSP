<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String mname = request.getParameter("mname");
	String memail = request.getParameter("memail");
	String mgender = request.getParameter("mgender");
%>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-4">회원 가입</h1></div>
</div>
<!-- 메인 ------------------------------------------------- -->
<div class="container">
	<form action="signupCheck.jsp" id="joinFrm" class="form-horizontal" method="get">
		<div class="form-group row"> 
			<label class="col-sm-2">아이디</label>
			<div class="col-sm-3">
				<input type="text"  name="mid" id="mid" class="form-control" required></div>
			<div class="col-sm-6">
				<span id="idChkMsg" class="text-danger"></span></div></div>
					   
		<div class="form-group row"> 
			<label class="col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input type="password" name="mpass" id="mpass" class="form-control" required></div></div>

				
		<div class="form-group row"> 
			<label class="col-sm-2">이름</label>
			<div class="col-sm-3">
				<input type="text" name="mname" value=<%=mname %> class="form-control" required></div></div>
					   
		<div class="form-group row"> 
			<label class="col-sm-2">이메일</label>
			<div class="col-sm-3">
				<input type="text" value=<%=memail %> name="memail" class="form-control" value=memail readonly required></div></div>
					   
		<select class="form-select" name="mgender" aria-label="Default select example">
		<%
		if (mgender.equals("male")) {
		%>
		<option value="male">남성</option>
		<%}else{%>
		<option value="female">여성</option>
		<%} %>
		</select>

		<div class="row"> 
			<div class="col-sm-10 text-right">
				<!-- <input type="button" value="이전으로" class="btn btn-secondary backBtn" > -->
				<input type="submit" value="회원가입" class="btn btn-info regBtn">
			</div></div>
	</form>
</div>	
</body>
</html>