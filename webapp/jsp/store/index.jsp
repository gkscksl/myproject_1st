<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<div align="center">
	<section class="store_bn1_section">
		<article class="store_bn_inner">
			<img class="w_pic" src="//image.istarbucks.co.kr/img/store/store_bn1_171109.jpg" alt>
	<ul align="right">
	<br><br><br><br><br><br>
		<li><a >다양한 매장들의 정보를 확인해보세요</a>
		<button onclick="location.href='/store/info.do'">매장 정보</button><br><br></li>
	
		<li><a>내 근처 매장을 찾아보세요</a>
		<button onclick="location.href='/store/find.do'">매장 찾기</button><br><br></li>
	
		<li><a>원하는 매장까지 빠르게</a>
		<button onclick="location.href='/store/findRoad.do'">길찾기</button><br><br></li>
	</ul>
		</article>
	</section>
</div>
<!-- 섹션을 만들어서 적용시켜야됨 -->
<c:import url="../default/footer.jsp" />