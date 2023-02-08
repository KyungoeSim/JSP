<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	//int result = boardDAO.insert(subject,content);
	
	
	int result = 1; //디비에 잘 저장이 되었다고 가정
	//msg,rphone
	String rphone = "010-4943-3099"; //고객 디비에서 글쓴이의 폰번호를 조회해 가져온 것으로 가정
	
	if(result==1){
		//문자 메시지 전송하고 모달 출력하고 메인으로 리다이렉트
		response.sendRedirect("smsCheck.jsp?msg="+URLEncoder.encode(subject)+"&rphone="+rphone);
%>
        <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
        <h4 class="modal-title" id="myModalLabel">SMS 발송 성공</h4>
      </div>
      <div class="modal-body">메시지 발송을 성공하였습니다!
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
       
      </div>
    </div>
  </div>
</div>
</div>
</div>
<%
	}else{
		response.sendRedirect("board.jsp");
	}

%>