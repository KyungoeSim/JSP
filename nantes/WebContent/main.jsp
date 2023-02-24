<%@page import="jdbc.PostDTO"%>
<%@page import="jdbc.NewsDTO"%>
<%@page import="jdbc.PostDAO"%>
<%@page import="jdbc.NewsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
		<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>나라가 임하는 교회</title>
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<link href="css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="css/animate.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body id="page-top">
<%@ include file="header.jsp"%>
<% 
	NewsDTO recentNews = null; 
	PostDTO recentPost = null;
	String newsPath = "";
	String postPath = "";
	String newsTitle = "";
	String postTitle = "";
	
	if( (recentNews = NewsDAO.select()) == null) {
		newsPath = "images/newsThumb.jpg";
		newsTitle = "업로드된 교회 소식이 없습니다.";
	} else {
		newsPath = recentNews.getNupfolder() +"/"+ recentNews.getNuuid() +"_" + recentNews.getNfilename();
		newsTitle = recentNews.getNtitle();
	}
	if( (recentPost = PostDAO.select()) == null) {
		postPath = "images/postThumb.jpg";
		newsTitle = "업로드된 주보가 없습니다.";
	} else {
		postPath = recentPost.getPupfolder() +"/"+ recentPost.getPuuid() +"_" + recentPost.getPfilename();
		postTitle = recentPost.getPtitle();
	}

%>
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top"><img src="images/logo.png" height="65" alt="Sanza theme logo"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a class="page-scroll" href="#page-top">Home</a>
						</li>
						<li>
							<a class="page-scroll" href="#about">교회소개</a>
						</li>
						<li>
							<a class="page-scroll" href="#features">교회비전</a>
						</li>
						<li>
							<a class="page-scroll" href="#partners">예배안내</a>
						</li>
						<li>
							<a class="page-scroll" href="#portfolio">교회소식</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">섬기는사람들</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">오시는길</a>
						</li>
						<li>
							<a class="page-scroll" href="https://www.youtube.com/channel/UC1vVE9jgfq6phZwKZ8Ur-0w"><img src="images/youtube.png"/>설교영상</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<!-- Header -->
		<header>
			<div class="container-fluid">
				<div class="slider-container">
					<div class="owl-slider owl-carousel">
						<div class="item">
							<div class="owl-slider-item">
								<img src="images/demo/slider-1.png" class="img-responsive" alt="portfolio">
							</div>
						</div>
						<div class="item">
							<div class="owl-slider-item">
								<img src="images/demo/slider-2.png" class="img-responsive" alt="portfolio">
							</div>
						</div>
						<div class="item">
							<div class="owl-slider-item">
								<img src="images/demo/slider-3.png" class="img-responsive" alt="portfolio">
							</div>
						</div>
						<div class="item">
							<div class="owl-slider-item">
								<img src="images/demo/slider-4.png" class="img-responsive" alt="portfolio">
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		
		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>환영합니다!</h2>
							<p style="font-size:20px;">
							이곳에 하나님의 나라가 온전히 임하기를 원합니다.<br>
							당신의 삶에도 하나님의 나라가 온전히 임하기를 기도합니다.<br>
							언제든 누구든 환영합니다. 잘 오셨습니다.
							</p>
							<br><br>
							<img src="images/logo2.png" style="height: 100px;"/>
							<br>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="about" class="light-bg">
			<br>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>교회 소개</h2>
							<p style="font-size:20px;">나라가임하는교회는 김포 한강신도시 구래동에 2020년 3월 1일에 개척한 교회입니다. 대한예수교장로회(합동) 수경노회에 소속된 건강한 교회이며, 교단신학교는 총신대학교입니다. <br>
 							하나님의 뜻이 온전히 이 땅 가운데 이루어지기 위하여 하나님과의 관계에 집중하며 예배, 말씀, 기도로 살아내고, 뜨겁게 서로 사랑하며 세상 가운데 하나님 나라를 선포하는 비전을 품고 달려가고 있습니다.
							</p>
							<img src="images/demo/church.png" />
							<br><br><br>
							<br><br><br>
							<strong style="font-size:25px; color: gray;">담임목사 소개</strong><br>
							<p>김종세 목사는 총신대학교(B.A.), 총신대학교 신학대학원(M.Div.)을 졸업하고, 총신대학교 목회신학전문대학원에서 설교학 석사(Th.M.)과정을 수료하였습니다.<br>
							 의왕사랑의교회, 더사랑의교회, 목양교회, 옥수중앙교회, 오륜교회에서 부교역자로 사역하였고, 2020년 나라가임하는교회를 개척하였습니다. <br>
							 성도의 집에 숟가락이 몇 개인지 아는 것보다, 성도들이 하나님과 날마다 더 친밀해지는 것을 목표로 사역하고 있습니다. <br>
							 목사를 좋아하는 성도보다, 하나님을 사랑하는 성도들과 행복한 목회를 하고 싶습니다. </p>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container -->
		</section>

		<section id="features" class="section-features">
			<br>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>비전 소개</h2>
							
							<img src="images/demo/vision.png"  class="img-responsive" alt="portfolio" >
						<strong style="font-size:25px;">나라가임하는교회 10대 비전</strong>
						 <p style="font-size:20px;">1. 하나님 한 분만 왕으로 통치하시는 교회<br>
						 2. 매일 죄와의 전쟁을 선포하는 교회<br>
						 3. 예배, 말씀, 기도에 생명을 거는 교회<br>
						 4. 서로 같은 곳을 바라보며 구체적으로 사랑하는 교회<br>
						 5. 영혼 구원을 위해 매일 기도하는 교회<br>
						 6. 회개하고 자복하며 예수 그리스도를 구주로 영접하는 역사가 매주 나타나는 교회<br>
						 7. 깊은 상처가 치유되고 인생의 쓴뿌리가 뽑히는 역사가 나타나는 교회<br>
						 8. 가정에 예배를 세우는 교회 <br>
						 9. 영향력 있는 사람을 세우는 교회<br>
						10. 세계 열방에 복음을 전하는 교회<br>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section id="partners" class="light-bg">
			<br>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title" style="text-align : center;">
							<h2>예배안내</h2>
							
							<h3>주일</h3>
							
							<div class="text-left" style="display:inline-block; color: gray; font-weight: 700; font-size: 20px;">
								<span style="display:inline-block; text-align: right; width: 150px; margin-right: 70px;">주일 예배 </span>
								<span>오전 11시</span>
								<br>
								<span style="display:inline-block; text-align: right; width: 150px; margin-right: 70px;">어린이 예배 </span>
								<span>오전 11시(교육관)</span>
								<br><br><br><br>
							</div>
							
							<h3>주중</h3>
							
							<div class="text-left" style="display:inline-block; color: gray; font-weight: 700; font-size: 20px;">
								<span style="display:inline-block; text-align: right; width: 150px; margin-right: 70px;">금요기도회 </span>
								<span>오후 8시 30분</span> 
								<br>
								<span style="display:inline-block; text-align: right; width: 150px; margin-right: 70px;">새벽 기도&통독 </span>
								<span>오전 5시 30분</span>
							</div>
						</div>
					</div>
				</div>
			</div><!-- end container -->
		</section>

		<!-- 교회 소식 섹션-->
		<section id="portfolio">
			<br>
			<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>교회 소식</h2>
					</div>
				</div>
			</div>
			<div class="row row-0-gutter text-center">
				<!-- start portfolio item -->
				<div class="col-md-4 col-0-gutter">
					<div class="ot-portfolio-item">
						<p style="font-weight:bold; color:#747474;">교회 소식</p>
						<figure class="effect-bubba">
							<img src="images/newsThumb.jpg" alt="img02" class="img-responsive" style="width:100%; height:40vh;" />
							<figcaption>
								<h2>교회 소식</h2>
								<p>예배 날짜와 시간</p>
								<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
							</figcaption>
						</figure>
						<%if(admin) { %>
						<button style="border-radius:10px;" class="btn btn-sm btn-outline-secondary" type="button" onclick="regNews()">소식 등록</button>
						<%} %>
					</div>
				</div>
				<!-- end portfolio item -->
			<!-- start portfolio item -->
				<div class="col-md-4 col-0-gutter">
					<div class="ot-portfolio-item">
						<p style="font-weight:bold; color:#747474;">주보</p>
						<figure class="effect-bubba">
								<img src="images/postThumb.jpg" alt="img02" class="img-responsive" style="width:100%; height:40vh;" />
							<figcaption>
								<h2>주보</h2>
								<p>2월 21일 주보</p>
								<a href="#" data-toggle="modal" data-target="#Modal-2">View more</a>
							</figcaption>
						</figure>
						<%if(admin) { %>
						<button style="border-radius:10px;" class="btn btn-sm btn-outline-secondary" type="button" onclick="regPost()">주보 등록</button>
						 <%} %>
					</div>
				</div>
				<!-- end portfolio item -->
			<!-- start portfolio item -->
				<div class="col-md-4 col-0-gutter">
					<div class="ot-portfolio-item">
						<p style="font-weight:bold; color:#747474;">갤러리</p>
						<figure class="effect-bubba">
							<div id="imgList" style="width:100%; height:40vh;"></div>
							<figcaption>
								<h2>갤러리</h2>
								<p>갤러리 보기</p>
								<a href="gallery.jsp">View more</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
			</div>
			
			</div><!-- end container -->
		</section>

		<section id="team" class="light-bg">
			<br>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>섬기는 사람들</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<!-- <div class="team-image">
								<img style="height:230px; width:100%;" src="images/profile.jpg" class="img-responsive" alt="author">
							</div> -->
							<div class="team-text" style="height:250px; padding:30px;">
								<h3>김종세</h3>
								<div class="team-position">담임목사</div>
								<p>총신대학교(B.A.)<br>총신대학교 신학대학원(M.Div.)<br>총신대학교 목회신학전문대학원<br>설교학 석사(Th.M.)과정 수료</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<!-- <div class="team-image">
								<img style="height:230px; width:100%;" src="images/profile.jpg" class="img-responsive" alt="author">
							</div> -->
							<div class="team-text" style="height:250px; padding:10px;">
								<h3>박명애</h3>
								<div class="team-position">전도사</div>
								<p>칼빈대학교<br>칼빈신학대학원 목회학석사(M.Div)<br>칼빈신학대학원 조직신학(Th.M)<br><br>성광교회, 봉성교회, 봉신교회<br>비전교회, 명지대학교교회 사역 </p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<!-- <div class="team-image">
								<img style="height:230px; width:100%;" src="images/profile.jpg" class="img-responsive" alt="author">
							</div> -->
							<div class="team-text" style="height:250px; padding:70px;">
								<h3>홍성선</h3>
								<div class="team-position">예배 반주</div>
								<p></p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
				</div>
			</div>
		</section>

		<section id="contact" class="dark-bg">
			<br>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>오시는 길</h2>
						</div>
						<div class="section-text">
							<p>경기도 김포시 김포한강9로76번길 37 801호 나라가임하는교회</p>
							<p><i class="fa fa-phone"></i> 031-981-5687</p>
							<p><i class="fa fa-envelope"></i> mail@yourcompany.com</p>
						</div>
						<div class="row" id="map" style="display:inline-block; width:70vw; height:50vh; margin-top: 50px;"></div>
					</div>
				</div>
			<!-- 관리자 로그인 (비밀번호 입력) -->
		<%if(admin) { %>
		<button type="button" style="background-color:black;" onclick="location.href='logout.jsp'">관리자 로그아웃</button>
		<%}else{ %>
		<button type="button" style="background-color:black;" id="loginBtn" >관리자 로그인</button>	
		<%}%>
		</div>
		</section>

			
		<p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>

		<!-- Modal for portfolio item 1 -->
		<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content" >
					<div class="modal-header"  >
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1"><%=newsTitle %></h4>
					</div>
					<div class="modal-body">
						<img src="<%=newsPath %>" alt="img01" class="img-responsive" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
				</div>
			</div>
		<!-- Modal for portfolio item 2 -->
		<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-2"><%=postTitle %></h4>
					</div>
					<div class="modal-body">
						<img src="<%=postPath %>" alt="img01" class="img-responsive" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

<!-- 관리자로그인 모달 -->
<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="msgModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
    <div class="modal-content" style="border-radius:10px;">
      <div class="modal-header" >
        <h1 class="modal-title fs-5" id="msgModalLabel">관리자 로그인</h1>
      </div>
      <div class="modal-body" id="newsmsgModalBody" style="padding:30px;">
		<form action="login.jsp" method="post" id="loginForm">
			<label class="form-label" for="pw">비밀번호</label>
			<input class="form-control mb-3" type="password" name="pw" id="pw">
		</form>
      </div>
      <div class="modal-footer">
        <button style="border-radius:10px;" type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		<button style="border-radius:10px;" type="button" class="btn btn-warning" data-bs-dismiss="modal" onclick="login()">로그인</button>
      </div>
    </div>
  </div>
</div>


<!-- 소식 등록 모달 -->
<div class="modal fade" id="newsUploadModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="msgModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
    <div class="modal-content" style="border-radius:10px;">
      <div class="modal-header" >
        <h1 class="modal-title fs-5" id="msgModalLabel">사진 등록</h1>
      </div>
      <div class="modal-body" id="newsmsgModalBody" style="padding:30px;">
		<form action="newsUpload.jsp" method="post" enctype="multipart/form-data" id="newsimgForm">
			<label class="form-label" for="title">제목</label>
			<input class="form-control mb-3" type="text" name="title" id="title">
			<label class="form-label" for="image">사진 선택</label>
			<input class="form-control" type="file" accept="image/*" name="image" id="image" >
		</form>
      </div>
      <div class="modal-footer">
        <button style="border-radius:10px;" type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		<button style="border-radius:10px;" type="button" class="btn btn-warning" data-bs-dismiss="modal" id="newsdoneBtn">등록</button>
      </div>
    </div>
  </div>
</div>


<!-- 주보 등록 모달 -->
<div class="modal fade" id="postUploadModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="msgModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
    <div class="modal-content"  style="border-radius:10px;">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="msgModalLabel">주보 등록</h1>
      </div>
      <div class="modal-body" id="postmsgModalBody" style="padding:30px;">
		<form action="postUpload.jsp" method="post" enctype="multipart/form-data" id="postimgForm">
			<label class="form-label" for="title">제목</label>
			<input class="form-control mb-3" type="text" name="title" id="title">
			<label class="form-label" for="image">사진 선택</label>
			<input class="form-control" type="file" accept="image/*" name="image" id="image">
		</form>
      </div>
      <div class="modal-footer" id="modal-footer">
        <button style="border-radius:10px;" type="button" class="btn btn-secondary" data-bs-dismiss="modal" data-dismiss="modal">취소</button>
		<button style="border-radius:10px; "type="button" class="btn btn-warning" data-bs-dismiss="modal" id="postdoneBtn">등록</button>
      </div>
    </div>
  </div>
</div>

		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/cbpAnimatedHeader.js"></script>
		<script src="js/jquery.appear.js"></script>
		<script src="js/SmoothScroll.min.js"></script>
		<script src="js/theme-scripts.js"></script>
		
		<!-- 카카오맵 -->
		<script style="margin:0px;" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d944d4a9cb22483964d7e130a9b4c2a"></script>
		<script>
			var position = new kakao.maps.LatLng(37.6442, 126.6273);
			
			var container = document.getElementById('map');
			var options = {
				center: position,
				level: 3
			};
		
			var map = new kakao.maps.Map(container, options);
			
			map.setZoomable();
			
			// 지도를 클릭한 위치에 표출할 마커입니다
			var marker = new kakao.maps.Marker({ 
			    // 지도 중심좌표에 마커를 생성합니다 
			    position: map.getCenter() 
			}); 
			// 지도에 마커를 표시합니다
			marker.setMap(map);
			
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
			
			//관리자로그인모달 보이게
			$('#loginBtn').on('click', function(){
				$('#loginModal').modal('show');
			});	
			// 로그인 모달 폼 전송
			function login(){
				$('#loginForm').submit();
			};
			
			//모달
			function regNews(){
				$('#newsUploadModal').modal('show');
			}
			
			$('#newsdoneBtn').on('click', function(){
				if ($('#title').val() != '' && $('#image').val() != '') {
					$('#newsimgForm').submit();
				} else {
					//popModal('사진 등록 실패', '입력 값이 없는 항목이 있습니다.')
				}
			});			
			
			function regPost(){
				$('#postUploadModal').modal('show');
			}

			$('#postdoneBtn').on('click', function(){
				if (true) {
					$('#postimgForm').submit();
				} else {
					//popModal('사진 등록 실패', '입력 값이 없는 항목이 있습니다.')
				}
			});
			
			function searchFunction() {
				//TODO: 리스트 출력 처리 하세요
					$.ajax({
						type:'post',
						url:'galleryProc.jsp',

						success:function(data){
							
							var data = JSON.parse(data.trim());
							
							var str = '';
							var img0 = data[0].gupfolder + '/' +data[0].guuid + '_' + data[0].gfilename;
							var img1 = data[1].gupfolder + '/' +data[1].guuid + '_' + data[1].gfilename;
							var img2 = data[2].gupfolder + '/' +data[2].guuid + '_' + data[2].gfilename;
							var img3 = data[3].gupfolder + '/' +data[3].guuid + '_' + data[3].gfilename;
							str += ''
								+'<img src="'+img0 +'" alt="image/demo/author-2.jpg" class="img-responsive" style="width:50%; height:25vh;float: right;" />'
								+'<img src="'+img1 +'" alt="image/demo/author-2.jpg" class="img-responsive" style="width:50%; height:25vh;float: left;" />'
								+'<img src="'+img2 +'" alt="image/demo/author-2.jpg" class="img-responsive" style="width:50%; height:25vh;float: left;" />'
								+'<img src="'+img3 +'" alt="image/demo/author-2.jpg" class="img-responsive" style="width:50%; height:25vh;float: right;" />'
							$("#imgList").html(str);
						}
					});	
			}
			window.onload = function() {
				searchFunction();
			}
		</script>
	</body>
</html>