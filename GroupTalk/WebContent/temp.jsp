<%@page import="jdbc.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "page_error_page.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Group Talk</title>
</head>
<body>
 <%@include file="header.jsp" %>
<div class="container bg-warning shadow mx-auto p-5 w-75">
<link href="../css/sign-in.css" rel="stylesheet">
<!-- container 화면 전체를 차지 하지않는 고정 크기 컨테이너, 브라우저 크기에 반응하여 자동으로 크기가 변동된다. 
	 bg-warning bg배경을 warning배 노란색으로 채운다.
	 shadow 입체감있게 그림자 효과 추가
	 mx-auto m 바깥여백 x가로로 auto 화면 가운데 정렬
	 p는 안쪽여백
	 w는 전체 너비-->
<%
	sid = (String) session.getAttribute("id"); //header에 넣어놨으니까 String 선언 또 하지않기
	if (!sid.equals("admin")){
%>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">관리자 전용 메뉴</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        관리자전용 메뉴입니다. 로그인 후 이용해주세요.
	      </div>
	      <div class="modal-footer">
		        <button onclick="location.href='login.jsp'" class="btn btn-primary">로그인</button>

	      </div>
	    </div>
	  </div>
	</div>

	<script>
		$(function() {
			$("#exampleModal2").modal("show");
		});
	</script>	
	
<%	
}else{
	session.setAttribute("id", sid);
}
%>
<script>
	function addItem(id) {
		$.ajax({
			type:"post",
			url: "useradd.jsp",
			data : {id:id},
			dataType:"text",
			
			success:function(data) {
				searchFunction(); //새로고침 안해도 바로 보이게

			}
		});
	}
	
	function delItem(id) {
		$.ajax({
			type:"post",
			url: "tempdel.jsp",
			data : {id:id
			},
			dataType:"text",
			
			success:function(data) {
				searchFunction();
			}
		});
	}
	
	function searchFunction(){
		$.ajax({
			type:'post',
			url: 'tempall.jsp', 
			success: function(data){
			var users = JSON.parse(data.trim()); //글자 분해해주는 기능
			
			var str = "";
			for(var i = 0; i<users.length; i++){
				str += "<tr><td>" + users[i].id + "</td>";
				str += "<td>" + users[i].name + "</td>";
				str += "<td><div onclick='delItem(\"" + users[i].id + "\")'><span class='btn btn-danger'>Reject</span></div></td>"; 					
				str += "<td><div onclick='addItem(\"" + users[i].id + "\")'><span class='btn btn-primary'>Accept</span></div></td>";
				str += "</tr>";
				
			  } $("#ajaxTable").html(str);
			}
		  });
		}
		
		window.onload = function(){
			searchFunction();
		}

</script>
<h1></h1>
<h2>Group Talk 가입 신청자 목록</h2>

<div>
<div class = "input-group" >

</div>
<hr>
<div class="container mt-3" style="margin: auto;">
<table class="table">
	<thead>
		<tr>
	      <th scope="col">id</th>
	      <th scope="col">name</th>
	      
		</tr>
	</thead>
	
<tbody id=ajaxTable class="table-group-divider">

</tbody>
</table>
</div>
</div>
     
    <%@include file="footer.jsp" %>
    
</body>
</html>









