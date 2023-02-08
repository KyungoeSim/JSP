<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" /> <!-- 모바일용 -->
<meta charset="UTF-8">
</head>
<body>

<%@include file="/header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
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
		        <button onclick="location.href='/login.jsp'" class="btn btn-primary">로그인</button>

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


<main class="form-signin w-100 m-auto">
<form action="feedaddCheck.jsp" method="post">
		<div class="page-hdr">글 작성</div>
		<div class="page-body">
			<div class="section pad-24 mtop-30">
				<input type="hidden" name="id" value="<%=sid %>">
				<textarea name="content" placeholder="작성글"  id="summernote" class="mtop-10"></textarea>
				<div class="section pad-24 mtop-30">
					<button class="w-100 btn btn-lg btn-outline-secondary" type="submit">글작성</button>
				</div>
			</div>
		</div>
	</form>
</main>

<script>
      $('#summernote').summernote({
        tabsize: 2,
        height: 300,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>
    <%@include file="/footer.jsp" %>
</body>


</html>