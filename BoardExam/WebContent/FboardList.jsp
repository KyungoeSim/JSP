<%@page import="jdbc.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<div class="container">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">파일1</th>
      <th scope="col">파일2</th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
  <tbody>
<%

	ArrayList<FboardDTO> boards = FboardDAO.getList();

	for (FboardDTO board : boards) {	
		
		String img1 = board.getBfile1();
		String img2 = board.getBfile2();
		
		String imgstr1 = "";
		if (img1 != null) {
			imgstr1 = "<img src='images/" + img1 + "' width=200";
		}
		String imgstr2 = "";
		if (img2 != null) {
			imgstr2 = "<img src='images/" + img2 + "' width=200";
		}
	
		
%>		
    <tr>
      <th scope="row"><%=board.getBno() %></th>
      <td><%=board.getBtitle() %></td>
      <td><%=board.getBwriter() %></td>
      <td><%=imgstr1 %></td>
      <td><%=imgstr2 %></td>
      <td><%=board.getBdate() %></td>
    </tr>

<% 
	}
%>

  </tbody>
</table>
</div>
</body>
</html>

