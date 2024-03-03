<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>매장수정하기</title>
</head>
<body>
	<c:if test="${not empty msg }">
		<h4>${msg }</h4>
	</c:if>
	
	<form action="shop_update_proc" method="post" >
		<c:if test="${not empty cates }">
			<select name="cate_num" id="cate_num">
				<c:forEach var="cate" items="${cates }">
					<option value="${cate.num }">${cate.type }</option>
				</c:forEach>
			</select><label>매장 카테고리 선택</label><br>
		</c:if>
		<input type="hidden" name="no" value="${shop.no }">
		<input type="text" name="name" id="name" value="${shop.name }"><br>
		<input type="text" name="tel" id="tel" value="${shop.tel }"><br>
		<input type="text" name="location" id="location"  value="${shop.location }">
		<input type="button" onclick="execDaumPostcode()" value="매장주소 찾기"><br>
		<input type="text" name="worktime" id="worktime" placeholder="${shop.worktime }"><br>
		<input type="text" name="lat" id="lat" placeholder="위도(lat)"><br>
		<input type="text" name="lng" id="lng" placeholder="경도(lng)"><br>
		<input type="submit" value="매장 수정하기" >
		<input type="button" value="취소하기" onclick="location.href='admin/shop_admin_index'">
	</form>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
	
</body>
</html>