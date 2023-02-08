<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../user/header.jsp" %>
 <link href="../user/sign-in.css" rel="stylesheet">
 <body class="text-center">
 <script>
function loginProcess() {
	$.ajax({
		type:"post",
		url: "loginCheckAJAX.jsp",
		data : {id:encodeURIComponent(document.getElementById('id').value),
			    password:encodeURIComponent(document.getElementById('password').value)
		},
		dataType:"text",
		
		success:function(data) {
			alert("로그인 성공");
		}
	});
}
</script>
 
<main class="form-signin w-100 m-auto">
  <!-- <form action="loginCheck.jsp"> -->
    <img class="mb-4" src="../user/3.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="password" placeholder="암호를 입력하세요">
      <label for="floatingPassword">Password</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" onclick="loginProcess();" type="submit">로그인</button>
<!--</form> -->
</main>
<%@include file="../user/footer.jsp" %>
</body>
</html>