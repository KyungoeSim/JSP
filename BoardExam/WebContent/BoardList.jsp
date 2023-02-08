<%@ page import="jdbc.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<div class="container">
	<table class="table table-hover">
 
 	<thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
  <tbody>
		
<%
		ArrayList<BoardDTO> boards = BoardDAO.getList();
		
		for(BoardDTO board : boards){	
%>
	<tr>
      <th scope="row"><%=board.getBno() %></th>
      <td><%=board.getBtitle() %></td>
      <td><%=board.getBcontent() %></td>
      <td><%=board.getBwriter() %></td>
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



