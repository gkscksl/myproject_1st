<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<title>매장등록하기</title>
<br>
<c:if test="${not empty msg }">
	<h4>${msg }</h4>
</c:if>

<form action="shop_add" method="post">
	<c:if test="${not empty cates }">
		<select name="cate_num" id="cate_num">
			<c:forEach var="cate" items="${cates }">
				<option value="${cate.num }">${cate.type }</option>
			</c:forEach>
		</select>
		<label>매장 카테고리 선택</label>
		<br>
	</c:if>
	<input type="text" name="name" id="name" placeholder="매장 이름"><br>
	<input type="text" name="tel" id="tel" placeholder="매장 전화번호"><br>
	<input type="text" name="location" id="location" placeholder="매장 위치">
	<input type="button" onclick="execDaumPostcode()" value="매장주소 찾기"><br>
	<input type="text" name="worktime" id="worktime" placeholder="매장 운영시간"><br>
	<input type="number" name="lat" id="lat" placeholder="경도(lat)" step="0.0000001" value="0.0"><a>경도(lat)</a><br>
	<input type="number" name="lng" id="lng" placeholder="위도(lng)" step="0.000001" value="0.0"><a>위도(lng)</a><br>
	<input type="submit" value="매장 등록하기"> <input type="reset"	value="초기화">
</form><br>
<button type="button" onclick="location.href='shop_admin_index'">뒤로가기</button>
<script>
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById("location").value = addr;

			}
		}).open();
	}
</script>

<c:import url="../default/footer.jsp"/>