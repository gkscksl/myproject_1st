<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<title>관리자 페이지</title>
<br>
<div align="center">
<br>
	<h1>관리자 페이지</h1><br>
	
	<button onclick="location.href='/store/info.do'">매장 정보</button><br>
	
	<button onclick="location.href='/store/find.do'">매장 찾기</button><br>
	
	<button onclick="location.href='/store/findRoad.do'">길찾기</button><br>
	
	<a href="shop_cate_add">매장카테고리추가 || </a>
	<a href="shop_cate_list">매장카테고리보기</a><br>
	<a href="shop_add">매장추가 || </a>
	<a href="shop_list">매장보기</a><br>
</div>

<c:import url="../default/footer.jsp"/>