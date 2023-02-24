<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
 <link href="header.css" rel="stylesheet">
</head>
<body>
<main>

<nav class="navbar navbar-expand-md navbar-white fixed-top bg-white">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" style="font-weight:bold; color:orange;font-size:25px ">여기 맛집 알아?</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse" style="font-size:15px; ">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="main.jsp">지역별 맛집</a>
        </li>
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false" >맛집 공유</a>
            <ul class="dropdown-menu" style="font-size:15px">
              <li><a class="dropdown-item" href="addList.jsp">게시물 작성</a></li>
              <li><a class="dropdown-item" href="listAll.jsp">맛집 전체 보기</a></li>
              <li><a class="dropdown-item" href="#">맛집 랭킹</a></li>
          	</ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false" >내 맛집</a>
            <ul class="dropdown-menu" style="font-size:15px">
              <li><a class="dropdown-item" href="#">내가 공유한 맛집</a></li>
              <li><a class="dropdown-item" href="#">내 찜목록 보기</a></li>
          	</ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false" >관리자 메뉴</a>
            <ul class="dropdown-menu" style="font-size:15px">
              <li><a class="dropdown-item" href="#">회원 목록 조회</a></li>
              <li><a class="dropdown-item" href="#">게시물 삭제</a></li>
          	</ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false" >마이페이지</a>
            <ul class="dropdown-menu" style="font-size:15px">
              <li><a class="dropdown-item" href="#">로그인</a></li>
              <li><a class="dropdown-item" href="#">로그아웃</a></li>
              <li><a class="dropdown-item" href="#">정보수정</a></li>
              <li><a class="dropdown-item" href="#">회원가입</a></li>
              <li><a class="dropdown-item" href="#">회원탈퇴</a></li>
          	</ul>
          </li>
       
      </ul>
    </div>
  </div>
</nav>
</main>
</body>
</html>