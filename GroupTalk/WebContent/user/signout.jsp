<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
 <body class="text-center">
 <%@include file="/header.jsp" %>
  <link href="../css/sign-in.css" rel="stylesheet">
<%
	sid = (String) session.getAttribute("id"); //header에 넣어놨으니까 String 선언 또 하지않기
	if (sid != null){
		session.setAttribute("id", sid);
	}
%>
 <div class="container bg-warning shadow mx-auto p-5 w-75">
<main class="form-signin w-100 m-auto">
  <form action="signoutCheck.jsp" method="post">
    <img class="mb-4" src="/3.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">회원탈퇴</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="id" id="floatingInput" value="<%=sid%>" readonly>
      <label for="floatingInput">Email</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="암호를 입력하세요">
      <label for="floatingPassword">Password</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">회원탈퇴</button>
  </form>
</main>
</div>
<%@include file="/footer.jsp" %>
</body>
</html>