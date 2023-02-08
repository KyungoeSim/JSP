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
<%@include file="/header.jsp" %>
<script>

function searchFunction(){
	
	$.ajax({
		type:'post',
		url: 'feedCheckAJAX.jsp', 
		success: function(data){
			var feeds = JSON.parse(data.trim()); //글자 분해해주는 기능
			
			var str = "";
			for(var i = 0; i<feeds.length; i++){
				str += "<tr><td>" + feeds[i].no + "</td>";
				str += "<td>" + feeds[i].id + "</td>";
				str += "<td>" + feeds[i].content + "</td>";
				str += "<td>" + feeds[i].ts + "</td>";
				
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
<h3 class="my-3">글 목록</h3>
  <thead>
    <tr>
      <th scope="col">no</th>
      <th scope="col">id</th>
      <th scope="col">content</th>
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