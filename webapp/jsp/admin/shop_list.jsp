<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<title>매장 목록</title>
<br>
<c:choose>
	<c:when test="${empty shops }">
		<h2>등록된 매장정보들이 없습니다</h2>
		<button type="button" onclick="location.href='shop_admin_index'">뒤로가기</button>
	</c:when>
	<c:otherwise>
		<table border="1" class="notice_tb">
			<tr>
				<th>매장 번호</th>
				<th>매장 타입</th>
				<th>매장 이름</th>
				<th>매장 연락처</th>
				<th>매장 위치</th>
				<th>매장 영업시간</th>
				<th>위도</th>
				<th>경도</th>
				<th>수정 || 삭제</th>
			</tr>
			<c:forEach var="shop" items="${shops }">
				<tr>
					<td>${shop.no }</td>
					<td>${shop.type }</td>
					<td>${shop.name }</td>
					<td>${shop.tel }</td>
					<td>${shop.location }</td>
					<td>${shop.worktime }</td>
					<td>${shop.lat }</td>
					<td>${shop.lng }</td>
					<td colspan="2">
						<button type="button"
							onclick="location.href='shop_update?no=${shop.no}'">수정</button>
						<button type="button"
							onclick="location.href='shop_delete_proc?no=${shop.no}'">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</table>
		<button type="button" onclick="location.href='shop_admin_index'">뒤로가기</button>
	</c:otherwise>
</c:choose>

<c:import url="../default/footer.jsp"/>