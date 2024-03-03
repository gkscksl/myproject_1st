<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>pay_test</title>
</head>
<body>
<form name="f">
	<table border="1">
		<tr>
			<th>상품명</th>
			<th>상품이미지</th>
			<th>상품 가격</th>
			<th>상품 수량</th>
			<th>상품 총액</th>
		</tr>
		<tr>
			<td>1번</td>
			<td>없음</td>
			<td>100원</td>
			<td>2개</td>
			<td>200원</td>
		</tr>
		
	</table>
	<button name="btn-kakao-pay" id="btn-kakao-pay" type="submit">결제하기</button>
</form>
<button onclick="location.href='/store/index.do'">인덱스로 이동</button>	<!-- 가는데 -->
<button onclick="location.href='/pay/payResult'">결제내역||고장남</button>	<!-- 길 잃음 -->
<button onclick="window.open('/store/index.do')">인덱스로 이동</button>

<script>
$(function(){
	$("#btn-kakao-pay").click(function(){
		
		let totalPayPrice = 200
		let totalPrice = 200
		let discountPrice = totalPrice - totalPayPrice 
		let usePoint = 0
		
		// 카카오페이 결제전송
		$.ajax({
			type:'get'
			,async:false
			,url:'/pay/middle'
			,data:{
				total_amount: totalPayPrice
				,payUserName: name
				,sumPrice:totalPrice
				,discountPrice:discountPrice
				,totalPrice:totalPayPrice
				,usePoint:usePoint
			},
			success:function(response){
				
				window.open(response.next_redirect_pc_url,"width=500, height=500")
			}
		})
	})
})

</script>
</body>
</html>