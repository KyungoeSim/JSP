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
		String addr = request.getParameter("addr");
	%>
	
<div id="map" style="width:100%;height:350px;"></div>
<div id="roadview" style="width:700px;height:500px;"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d944d4a9cb22483964d7e130a9b4c2a&libraries=services"></script>
<script>
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	//주소를 좌표로 변환 객체 생성
		var geocoder = new kakao.maps.services.Geocoder();
	
	geocoder.addressSearch('<%=addr%>', function(result, status){
		//정상적으로 해당 주소를 검색 완료했다면
		if(status === kakao.maps.services.Status.OK){
			
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x); //위도, 경도 뽑아낸거
			
			var marker = new kakao.maps.Marker({
				map: map,
				position:coords
			});
			var inforwindow = new kakao.maps.InfoWindow({
				content:'검색한 지점'
			});
			inforwindow.open(map, marker);
			
			//해당 주소로 지도 화면 중심 이동
			map.setCenter(coords);
			
	
			//로드뷰 표시 위치
			var roadviewContainer = document.getElementById('roadview');
			
			//로드뷰 객체 생성
			var roadview = new kakao.maps.Roadview(roadviewContainer);
			
			//해당 좌표로부터 로드 뷰 파노라마 id를 가져올 로드 뷰 helper 객체
			var roadviewClient = new kakao.maps.RoadviewClient();
			
			
			//특정 위치의 좌표와 가까운 로드뷰를 추출하여 로드뷰를 띄운다.
			
			roadviewClient.getNearestPanoId(coords, 50, function(PanoId){
				roadview.setPanoId(PanoId, coords);
			});
			}
			});
		

</script>
</body>
</html>