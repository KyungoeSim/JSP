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
 <%@include file="/header.jsp" %>
<div class="container bg-warning shadow mx-auto p-5 w-75">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="../css/sign-in.css" rel="stylesheet">
<!-- container 화면 전체를 차지 하지않는 고정 크기 컨테이너, 브라우저 크기에 반응하여 자동으로 크기가 변동된다. 
	 bg-warning bg배경을 warning배 노란색으로 채운다.
	 shadow 입체감있게 그림자 효과 추가
	 mx-auto m 바깥여백 x가로로 auto 화면 가운데 정렬
	 p는 안쪽여백
	 w는 전체 너비-->
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
		        <button onclick="location.href='../user/login.jsp'" class="btn btn-primary">로그인</button>

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
<script>
	function addItem() {
		$.ajax({
			type:"post",
			url: "../feed/feedadd.jsp",
			data : {id:document.getElementById('id').value,
					content:$("#summernote").summernote("code")
			},
			dataType:"text",
			
			success:function(data) {
//				var id = document.getElementById('id'); id는 세션처리하기때문에 지움
				var summernote = document.getElementById('summernote');
				summernote.value=""; //입력하면 칸 비우기
				searchFunction(); //새로고침 안해도 바로 보이게
				$("#summernote").summernote("reset")
			}
		});
	}
	
	function delItem(no) {
		$.ajax({
			type:"post",
			url: "../feed/feeddel.jsp",
			data : {no:no
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
			url: '../feed/feedall.jsp', 
			success: function(data){
			var feeds = JSON.parse(data.trim()); //글자 분해해주는 기능
			
			var str = "";
			for(var i = 0; i<feeds.length; i++){
				str += "<tr><td>" + feeds[i].id + "</td>";
				str += "<td>" + feeds[i].content + "</td>";
 		  		str += "<td>";
				if ("<%=sid%>" == feeds[i].id) {
				str += 	"<div onclick='delItem(\"" + feeds[i].no + "\")'><span class='text-danger bg-dark'>Delete</span></div>"
				}
				str += "</td>";
				str += "<td>" + feeds[i].ts + "</td></tr>";
				
			  } $("#ajaxTable").html(str);
			}
		  });
		}
		
		window.onload = function(){
			searchFunction();
		}

</script>
<h1></h1>
<h2>Group Talk</h2>
<hr>
<div>
<div class = "input-group" >
<input id="id" type="hidden" value="<%=sid%>">
<input id="summernote" class="form-control" type="text" >
<button type="button" class="btn btn-primary" onclick="addItem()">추가</button>
</div>
<hr>
<div class="container mt-3" style="margin: auto;">
<table class="table">
	<thead>
		<tr>
	      <th scope="col">id</th>
	      <th scope="col" colspan=2>content</th>
	      <th scope="col">time</th>
		</tr>
	</thead>
	
<tbody id=ajaxTable class="table-group-divider">
</tbody>
</table>
</div>
</div>
</div>
<script>
      $('#summernote').summernote({
        placeholder: '내용을 입력하세요',
        tabsize: 2,
        height: 90,
        width: 550,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
     
    </script>
     
    <%@include file="footer.jsp" %>
    
</body>
</html>









