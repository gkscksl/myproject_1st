<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>
<br>
<h2>주변 매장 찾기</h2>
<div id="map" style="width:80%;height:600px;"></div>

<script>
	var map = new naver.maps.Map('map', {
	    center: new naver.maps.LatLng(37.5666395, 126.978799),
	    zoomControl:true,
	    zoomControlOptions: {
	        position: naver.maps.Position.TOP_RIGHT
	    },
 	   zoom: 15,
	});

	var markers = [], infoWindows = [];

	var latlngs = [
		new naver.maps.LatLng(37.5709749, 126.992523),
		new naver.maps.LatLng(37.5140538, 126.942109)
	];
	
	var A0 = ['<div class="iw_inner">',
		'   <h3>단성사</h3>',
		'   <p>서울 종로구 돈화문로 26 | 5층 502호 | <a href="http://map.naver.com/?dlevel=12&amp;menu=route&amp;elng=126.992523&amp;elat=37.5709749&amp;eText=단성사" target="_blank">길찾기</a>',
		'   <br /></p>',
		'</div>'],
		
		A1 = ['<div class="iw_inner">',
		'   <h3>노량진역</h3>',
		'   <p>서울 동작구 노량진로 151 | 둘러보면 바로 | <a href="http://map.naver.com/?dlevel=12&amp;menu=route&amp;elng=126.942109&amp;elat=37.5140538&amp;eText=노량진역" target="_blank">길찾기</a>',
		'   <br /></p>',
		'</div>'];

	var contents = [
		A0, A1
	];
	
	for(var i=0; i<latlngs.length; i++){
		var marker = new naver.maps.Marker({
			position: latlngs[i],
			map: map
		})
		
		var infoWindow = new naver.maps.InfoWindow({
			content: contents[i].join('')
			
		})
		
		markers.push(marker);
		infoWindows.push(infoWindow);
	};
	
	function getClickHandler(seq) {
	    return function(e) {
	        var marker = markers[seq],
	            infoWindow = infoWindows[seq];

	        if (infoWindow.getMap()) {
	            infoWindow.close();
	        } else {
	            infoWindow.open(map, marker);
	        }
	    }
	}

	for (var i=0, ii=markers.length; i<ii; i++) {
	    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
	}
	
	</script>
<br>
<div align="right">
	<button type="button" onclick="location.href='/store/index.do'">뒤로가기</button>
</div>
<c:import url="../default/footer.jsp" />