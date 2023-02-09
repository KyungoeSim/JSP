<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="text-center">
<%@include file="/header.jsp" %>
<link href="../css/sign-in.css" rel="stylesheet"> 
<div class="container bg-warning shadow mx-auto p-5 w-75">
<main class="form-signin w-100 m-auto">
  <form action="loginCheck.jsp">
    <img class="mb-4" src="/3.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="id" id="floatingInput" placeholder="아이디를 입력하세요">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="암호를 입력하세요">
      <label for="floatingPassword">Password</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
  </form>
</main>
</div>
<%@include file="/footer.jsp" %>
</body>
</html>