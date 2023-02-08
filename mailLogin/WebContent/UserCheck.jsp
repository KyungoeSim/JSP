<%@page import="smtp.NaverSMTP"%>

<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<%request.setCharacterEncoding("utf-8"); //한글 처리처리

	String to = request.getParameter("to");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
	Map<String, String> emailInfo = new HashMap<String, String>();
	
	emailInfo.put("from", "tlaruddhl@naver.com"); //보내는 사람 , 변동 불가, 반드시 본인의 네이버 메일주소
	emailInfo.put("to", request.getParameter("to")); //받는 사람
	emailInfo.put("subject", "회원가입을 환영합니다");// 메일 제목
	
	content = content.replace("\r\n", "<br/>"); //줄바꿈을 html 형식으로 변환
	
	String htmlContent = ""; // 전체 내용을 html 형식으로 바꾸어 저장할 변수 
	
	//html 메일 템플릿 파일 읽어오기  경로가 있을때는 경로명까지 주의
	String templatePath = application.getRealPath("/Welcome.html");
	BufferedReader br = new BufferedReader(new FileReader(templatePath));
	
	String oneLine;
	while ((oneLine = br.readLine()) != null) {
		htmlContent += oneLine + "\n";
	}
	
	br.close();
	
	// 읽어온 템플릿의 자리표시자인 __CONTENT__ 부분을 메일 내용으로 대체
	htmlContent = htmlContent.replace("__NAME__", name);
	htmlContent = htmlContent.replace("__TO__", to);
	htmlContent = htmlContent.replace("__PASS__", pass);
	
	// 변경 내용 저장
	emailInfo.put("content", htmlContent);// 메일 내용
	emailInfo.put("format", "text/html;charset=UTF-8");// 메일 형식
	NaverSMTP smtpServer = new NaverSMTP(); //메일 전송 객체 생성
	smtpServer.emailSending(emailInfo);
	
	int result = UserDAO.join(to, pass, name, content);
	
	
	if(result==1){
%>	
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">회원 가입 완료</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
           축하합니다!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<script>
	$(function() {
		$("#exampleModal").modal("show");
	});
</script>

<% 
	} else {
%>
		
		<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">회원 가입 완료</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        회원 가입 실패 !!!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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
	}

%>
