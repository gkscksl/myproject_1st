<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<br>
<div class="search">
	<input type="text" name="address" id="address" placeholder="주소를 입력하세요">
	<input type="button" name="submit" id="submit" value="검색">
</div>

<div align="center" id="map" style="width:95%;height:600px;"></div>


<script>
var center = new naver.maps.LatLng(37.5665899, 126.978641);

var map = new naver.maps.Map('map', {
    center: center,
    zoom: 15
});

var infoWindow = new naver.maps.InfoWindow({
    anchorSkew: true
});

map.setCursor('pointer');

function searchCoordinateToAddress(latlng) {

    infoWindow.close();

    naver.maps.Service.reverseGeocode({
        coords: latlng,
        orders: [
            naver.maps.Service.OrderType.ADDR,
            naver.maps.Service.OrderType.ROAD_ADDR
        ].join(',')
    }, function(status, response) {
        if (status === naver.maps.Service.Status.ERROR) {
            return alert('Something Wrong!');
        }

        var items = response.v2.results,
            address = '',
            htmlAddresses = [];

        for (var i=0, ii=items.length, item, addrType; i<ii; i++) {
            item = items[i];
            address = makeAddress(item) || '';
            addrType = item.name === 'roadaddr' ? '[도로명 주소]' : '[지번 주소]';

            htmlAddresses.push((i+1) +'. '+ addrType +' '+ address);
        }

        var lng = response.v2.addresses[0].y;
		var lat = response.v2.addresses[0].x;
		var path = 'http://map.naver.com/?dlevel=12&menu=route&elng=' + lng + '&elat=' + lat + '&eText='+address;
		
		infoWindow.setContent([
			'<div class="iw_inner">',
            '<h3 ">검색 장소 | '+address+'</h3>',
            htmlAddresses.join('<br />'),
            '   | <a onclick="window.open('+ "'" + path + "'" + ')',
            '">길찾기</a>',
            '</div>'
        ].join(''));

        infoWindow.open(map, latlng);
    });
}

function searchAddressToCoordinate(address) {
    naver.maps.Service.geocode({
        query: address
    }, function(status, response) {
        if (status === naver.maps.Service.Status.ERROR) {
            return alert('Something Wrong!');
        }

        if (response.v2.meta.totalCount === 0) {
            return alert('올바른 주소를 입력해주세요');
        }

        var htmlAddresses = [],
            item = response.v2.addresses[0],
            point = new naver.maps.Point(item.x, item.y);

        if (item.roadAddress) {
            htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
        }

        if (item.jibunAddress) {
            htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
        }

        var lng = response.v2.addresses[0].y;
		var lat = response.v2.addresses[0].x;
		var path = 'http://map.naver.com/?dlevel=12&menu=route&elng=' + lng + '&elat=' + lat + '&eText='+address;
				
		infoWindow.setContent([
			'<div class="iw_inner">',
            '<h3 ">검색 장소 | '+address+'</h3>',
            htmlAddresses.join('<br />'),
            '   | <a onclick="window.open('+ "'" + path + "'" + ')',
            '">길찾기</a>',
            '</div>'
        ].join(''));

        map.setCenter(point);
        infoWindow.open(map, point);
    });
}

function initGeocoder() {
    map.addListener('click', function(e) {
        searchCoordinateToAddress(e.coord);
    });

    $('#address').on('keydown', function(e) {
        var keyCode = e.which;

        if (keyCode === 13) { // Enter Key
            searchAddressToCoordinate($('#address').val());
        }
    });

    $('#submit').on('click', function(e) {
        e.preventDefault();

        searchAddressToCoordinate($('#address').val());
    });

    searchAddressToCoordinate('서울 중구 세종대로 110 서울특별시청');
}

function makeAddress(item) {
    if (!item) {
        return;
    }

    var name = item.name,
        region = item.region,
        land = item.land,
        isRoadAddress = name === 'roadaddr';

    var sido = '', sigugun = '', dongmyun = '', ri = '', rest = '';

    if (hasArea(region.area1)) {
        sido = region.area1.name;
    }

    if (hasArea(region.area2)) {
        sigugun = region.area2.name;
    }

    if (hasArea(region.area3)) {
        dongmyun = region.area3.name;
    }

    if (hasArea(region.area4)) {
        ri = region.area4.name;
    }

    if (land) {
        if (hasData(land.number1)) {
            if (hasData(land.type) && land.type === '2') {
                rest += '산';
            }

            rest += land.number1;

            if (hasData(land.number2)) {
                rest += ('-' + land.number2);
            }
        }

        if (isRoadAddress === true) {
            if (checkLastString(dongmyun, '면')) {
                ri = land.name;
            } else {
                dongmyun = land.name;
                ri = '';
            }

            if (hasAddition(land.addition0)) {
                rest += ' ' + land.addition0.value;
            }
        }
    }

    return [sido, sigugun, dongmyun, ri, rest].join(' ');
}

function hasArea(area) {
    return !!(area && area.name && area.name !== '');
}

function hasData(data) {
    return !!(data && data !== '');
}

function checkLastString (word, lastString) {
    return new RegExp(lastString + '$').test(word);
}

function hasAddition (addition) {
    return !!(addition && addition.value);
}

naver.maps.onJSContentLoaded = initGeocoder;
</script>
<br>
<div align="right">
	<button type="button" onclick="location.href='/store/index.do'">뒤로가기</button>
</div>
<c:import url="../default/footer.jsp"/>