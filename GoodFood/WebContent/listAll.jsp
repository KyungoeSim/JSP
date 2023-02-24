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
<section class="py-5 text-center container"></section>

<div class="container" style="margin: auto; ">
<div style="float:right; margin-bottom:10px">
	<form method="post" name="search" action="searchbbs.jsp">
		<table class="pull-right">
			<tr>
				<td><select class="form-control" name="searchField">
						<option value="0">선택</option>
						<option value="bbsTitle">제목</option>
						<option value="userID">작성자</option>
				</select></td>
				<td><input type="text" class="form-control"
					placeholder="검색어 입력" name="searchText" maxlength="100"></td>
				<td><button type="submit" class="btn btn-success">검색</button></td>
			</tr>
		</table>
	</form>
</div>
<br>
 <table class="table">
  <thead class="table-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>
</body>
</html>