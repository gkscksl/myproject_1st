<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<title>카테고리 목록확인</title>
<br>
	<c:choose>
		<c:when test="${empty cates }">
			<h2>등록된 카테고리가 없습니다</h2>
			<button type="button" onclick="location.href='shop_admin_index'">뒤로가기</button>
		</c:when>
		<c:otherwise>
			<table border="1" class="notice_tb">
				<tr>
					<th>카테고리 번호</th>
					<th>카테고리 타입</th>
					<th>카테고리 삭제</th>
				</tr>
				<c:forEach var="cate" items="${cates }">
				<tr>
					<td>${cate.num }</td>
					<td>${cate.type }</td>
					<td>
						<button type="button" onclick="location.href='shop_cate_delete_proc?num=${cate.num}'">삭제</button>
					</td>
				</tr>
				</c:forEach>
			</table>
			<button type="button" onclick="location.href='shop_admin_index'">뒤로가기</button>
		</c:otherwise>
	</c:choose>
<c:import url="../default/footer.jsp"/>