<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="/common/css/style_whatsnew.css" rel="stylesheet">
<meta charset="UTF-8">
<title>kakaoPayInfo</title>
</head>
<body>
	<c:choose>
	<c:when test="${empty info }">
		<table class="notice_tb">
			<tr>
				<th>상품명</th>
				<th>주문번호</th>
				<th>상품수량</th>
				<th>결제금액</th>
				<th>결제일시</th>
				<th>결제방법</th>
			</tr>
			<tr>
				<td colspan="6">주문정보가 없습니다.</td>
			</tr>
		</table>
	</c:when>
	<c:otherwise>
		<table class="notice_tb">
			<tr>
				<th>상품명</th>
				<th>주문번호</th>
				<th>상품수량</th>
				<th>결제금액</th>
				<th>결제방법</th>
				<th>결제일시</th>
			</tr>
			<tr>
				<td>${info.item_name}</td>
				<td>${info.partner_order_id}</td>
				<td>${info.quantity}</td>
				<td>${info.amount.total}</td>
				<td>${info.payment_method_type}</td>
				<td>${info.approved_at}</td>
			</tr>
		</table>
	</c:otherwise>
	</c:choose>
	<button onclick="location.href='/store/index.do'">홈화면으로 이동</button>
</body>
</html>