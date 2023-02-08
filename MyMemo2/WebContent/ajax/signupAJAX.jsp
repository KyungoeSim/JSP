<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<%@include file="/header.jsp" %>
 <link href="sign-in.css" rel="stylesheet">
 <body class="text-center">
 <script>
function signinFunction() {
	$.ajax({
		type:"post",
		url: "signupCheckAJAX.jsp",
		data : {id:encodeURIComponent(document.getElementById('id').value),
			    password:encodeURIComponent(document.getElementById('password').value),
			    name:encodeURIComponent(document.getElementById('name').value)
		},
		dataType:"text",
		
		success:function(data) {
			var id = document.getElementById('id');
			var password = document.getElementById('password');
			var name = document.getElementById('name');
			id.value=""; //잘들어왓으니 칸 비우기
			password.value="";
			name.value="";
		}
	});
}
</script>
 
<main class="form-signin w-100 m-auto">
<!--   <form action="signupCheckAJAX.jsp" method="post"> -->
    <img class="mb-4" src="5.jpg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">회원가입</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="password" placeholder="암호를 입력하세요">
      <label for="floatingPassword">Password</label>
    </div>
     <div class="form-floating">
      <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요">
      <label for="floatingInput">Name</label>
    </div>
<!--     <button class="w-100 btn btn-lg btn-primary" type="submit">회원가입</button> -->
	 <input type="submit" id="signin" onclick="signinFunction();" class="mtop-20" value="회원가입">

</main>
<%@include file="/footer.jsp" %>
</body>
</html>