<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
 <link href="../css/sign-in.css" rel="stylesheet">
 <body class="text-center">
 <%@include file="header.jsp" %>
 <h1 class="mt-5"></h1>
<main class="form-signin w-100 m-auto">
  <form action="signeditCheck.jsp" method="post">
    <img class="mb-4" src="3.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">회원 정보 수정</h1>

    <div class="form-floating">
      <input type="hidden" class="form-control" name="id" id="floatingInput" value="<%=sid%>">
      <label for="floatingInput">Email</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="암호를 입력하세요">
      <label for="floatingPassword">Password</label>
    </div>
     <div class="form-floating">
      <input type="text" class="form-control" name="name" id="floatingInput" placeholder="이름을 입력하세요">
      <label for="floatingInput">Name</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">정보 수정</button>
  </form>
</main>
<%@include file="footer.jsp" %>
</body>
</html>