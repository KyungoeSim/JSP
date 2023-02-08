<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String lat = request.getParameter("lat");
		String lon = request.getParameter("lon");
	%>
	
	<div id="map" style="width:700px;height:700px;"></div>

	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d944d4a9cb22483964d7e130a9b4c2a"></script>

	
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(<%=lat%>, <%=lon%>),
			level: 3  // 지도의 크기를 설정 예) 10 이 서울 전체, 제주 전체
		};

		var map = new kakao.maps.Map(container, options);
		
		
		// 마커 올리기
		// 마커 위치 설정
			var markerPosition = new kakao.maps.LatLng(<%=lat%>, <%=lon%>);
		// 마커 객체 생성
			var marker = new kakao.maps.Marker({
				position: markerPosition
			});
		
		// 마커 지도에 올리기
			marker.setMap(map);
		
		// 정보창 올리기
		// 정보창 내용 생성
			var iwContent = "<h5>위도:<%=lat%><br> 경도:<%=lon%></h5>",
				iwPosition = new kakao.maps.LatLng(<%=lat%>, <%=lon%>);
		// 정보창 객체 생성
			var infowindow = new kakao.maps.InfoWindow({
				position : iwPosition,
				content : iwContent
			})
		// 정보창 지도에 올리기
			infowindow.open(map, marker);	// marker 를 넣을떄와 뺼때의 차이 보기	
			//infowindow.open(map); // marker 옵션을 제거하면 마커 앞에 찍히게 되어 
		</script>
</body>
</html>