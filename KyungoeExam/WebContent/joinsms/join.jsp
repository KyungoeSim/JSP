<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%@ include file="/header.jsp" %>

<div class="alert alert-dark">
<div class="container">
<h1 class="display-3">회원가입</h1>
</div>
</div>

<div class="container">
<form action = "joinCheck.jsp">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">아이디</label>
  <input type="text" name="id" class="form-control" id="exampleFormControlInput1" >
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">비밀번호</label>
  <input type="text" name="pass" class="form-control" id="exampleFormControlInput1" >
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">이름</label>
  <input type="text" name="name" class="form-control" id="exampleFormControlInput1" >
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">이메일</label>
  <input type="text" name="email" class="form-control" id="exampleFormControlInput1" >
</div>
<input type="submit" class="btn btn-primary" value="등록">
<input type="reset" class="btn btn-warning" value="취소">
</form>
</div>

<%@ include file="/footer.jsp" %>
</body>
</html>