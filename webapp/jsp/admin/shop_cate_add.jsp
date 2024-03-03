<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<title>매장추가하기</title>

<br>
<form action="shop_cate_add" method="post" >
	<input type="text" name="type" placeholder="매장 카테고리"><br>
	<input type="submit" value="매장 카테고리 등록하기" >
	<input type="button" value="취소하기" onclick="location.href='shop_admin_index'">
</form>

<c:import url="../default/footer.jsp"/>