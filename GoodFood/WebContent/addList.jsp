<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <head>
    <meta charset="UTF-8">
    
  </head>
  <body>
  <%@include file="/header.jsp" %>
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
 <section class="py-5 text-center container"></section>
    
  <div class = "container">
<form action = "#" method="post">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" class="form-control" name="btitle" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" >내용</label>
  <textarea class="form-control" name = "bcontent"  id="summernote" rows="3"></textarea>
</div>

		<button type="submit" class="btn btn-primary" style="float:right;">등록</button>
	
</form>
</div>

    <script>
      $('#summernote').summernote({
        placeholder:'',
        tabsize: 2,
        height: 300
      });
    </script>
     <section class="py-5 text-center container"></section>
  </body>
</html>