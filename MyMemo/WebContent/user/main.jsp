<%@page import="jdbc.feedDAO"%>
<%@page import="jdbc.feedDTO"%>
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
<%@include file="header.jsp" %>
<%
	sid = (String) session.getAttribute("id"); //header에 넣어놨으니까 String 선언 또 하지않기
	if (sid == null){
%>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">회원 전용 메뉴</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        회원전용 메뉴입니다. 로그인 후 이용해주세요.
	      </div>
	      <div class="modal-footer">
		        <button onclick="location.href='login.jsp'" class="btn btn-primary">로그인</button>

	      </div>
	    </div>
	  </div>
	</div>

	<script>
		$(function() {
			$("#exampleModal1").modal("show");
		});
	</script>	
	
<%	
}else{
	session.setAttribute("id", sid);
}
%>

	<div class="container mt-3" style="margin: auto;">
		<table class="table table-striped table-hover">
			<h3 class="my-3">작성 메모 리스트</h3>

			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">ID</th>
					<th scope="col">등록일자</th>
					<th scope="col">내용</th>
					<th></th>
				</tr>
			</thead>
			<tbody>

				<%
					ArrayList<feedDTO> feeds = feedDAO.getList(sid);

				for (feedDTO feed : feeds) {
				%>

				<tr>
					<th scope="row"><%=feed.getNo()%></th>
					<td><%=feed.getId()%></td>
					<td><%=feed.getTs()%></td>
					<td colspan=2><%=feed.getContent()%></td>
				</tr>

<%			
	}
%>
</tbody>
</table>
</div>


<%@include file="footer.jsp" %>
</body>
</html>