<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
	 .main_image {
	    position: relative;
	  }
	  .main_image_text {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate( -50%, -50% );
	    color: white;
	  }

    </style>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 <%@include file="/header.jsp" %>
  <section class="py-5 text-center container"></section>

    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
           <div class="main_image"><a href="#"><img src="seoul.jpg" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/> <h1 class="main_image_text" style="font-size:30px">서울</h1></a></div> 
              <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">경기</text></svg></a>
              <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
       
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">인천</text></svg></a>
              <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>


        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">충청</text></svg></a>
              <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">강원</text></svg></a>
              <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">전라</text></svg></a>
             <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">경상</text></svg></a>
             <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">부산</text></svg></a>
              <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>
        <div class="col">
            <a href="#"><svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">제주</text></svg>
            <div class="d-flex justify-content-between align-items-center">
            </div>
          </div>

  </div>
 </div>
</body>
</html>