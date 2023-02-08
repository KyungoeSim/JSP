<%@page import="jdbc.feedDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/header.jsp" %>  
<%

	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String content = request.getParameter("content");
	
	if(feedDAO.insert(id,content)){ //들어갔으면 %>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">글 등록 완료</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        글 등록을 완료하였습니다.
	      </div>
	      <div class="modal-footer">
		        <button onclick="location.href='/main.jsp'" class="btn btn-primary">메인으로</button>

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
		out.print("등록 실패");
	}
	
%>
<%@include file="/footer.jsp" %>