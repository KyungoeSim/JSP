<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <head>
    <meta charset="UTF-8">
    <title>Summernote with Bootstrap 5</title>
    <!-- include libraries(jQuery, bootstrap) -->
    <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- include summernote css/js-->
    <link href="summernote-bs5.css" rel="stylesheet">
    <script src="summernote-bs5.js"></script>

  </head>
  <body>
  <div class = "container">
<form action = "BoardInsert.jsp" method="post">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" class="form-control" name="btitle" id="exampleFormControlInput1">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label" >내용</label>
  <textarea class="form-control" name = "bcontent"  id="summernote" rows="3"></textarea>
</div>

		<button type="submit" class="btn btn-primary">등록</button>
	
</form>
</div>
   
    <script>
      $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 5',
        tabsize: 2,
        height: 100
      });
    </script>
  </body>
</html>