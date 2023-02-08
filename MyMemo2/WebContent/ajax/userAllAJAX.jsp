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
<%@include file="/header.jsp" %>
<script>

function searchFunction(){
	
	$.ajax({
		type:'post',
		url: 'userCheckAJAX.jsp', 
		success: function(data){
		var users = JSON.parse(data.trim()); //글자 분해해주는 기능
			
			var str = "";
			for(var i = 0; i<users.length; i++){
				str += "<tr><td>" + users[i].id + "</td>";
				str += "<td>" + users[i].password + "</td>";
				str += "<td>" + users[i].name + "</td>";
				str += "<td>" + users[i].ts + "</td>";
				
			} $("#ajaxTable").html(str);
		}
	  });
	}
	
	window.onload = function(){
		searchFunction();
	}

</script>
<div class="container mt-3" style="margin: auto;">
	<table class="table table-striped table-hover">
	<h3 class="my-3">작성 메모 리스트</h3>
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">password</th>
      <th scope="col">name</th>
      <th scope="col">time</th>
    </tr>
  </thead>
  <tbody id="ajaxTable" class="table-group-divider">
  </tbody>
</table>
</div>
<%@include file="/footer.jsp" %>
</body>
</html>