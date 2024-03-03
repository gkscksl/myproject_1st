<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../default/header.jsp"/>

<div align="center">
	<br>
		<h1>우리의 매장 소개</h1>
			<div align="center">
			<c:choose>
				<c:when test="${empty shops }">
					<table border="1" class="notice_tb">
					<tr>
							<th>매장 유형</th>
							<th>매장 이름</th>
							<th>영업 시간</th>
							<th>매장 위치 바로가기</th>
					</tr>
					<tr>
						<td colspan="4">아직 등록된 매장이 없습니다. 빠른 시일내에 찾아뵙겠습니다.</td>
					</tr>
					</table>
				</c:when>
				<c:otherwise>
					<table border="1" class="notice_tb">
						<tr>
							<th>매장 유형</th>
							<th>매장 이름</th>
							<th>영업 시간</th>
							<th>매장 위치 바로가기</th>
						</tr>
						<c:forEach var="shop" items="${shops }">
							<tr>
							
								<td>${shop.type }</td>
								<td>${shop.name }</td>
								<td>${shop.worktime }</td>
								<c:choose>
									<c:when test="${empty shop.lat }">
										<td onclick="alert('아직 준비중입니다. 빠른 시일내에 완료 후 찾아뵙겠습니다.')">${shop.location }</td>
									</c:when>
									<c:otherwise>
										<td onclick="window.open('http://map.naver.com/?dlevel=12&amp;menu=route&amp;elng=${shop.lng}&amp;elat=${shop.lat }&amp;eText=${shop.name }')">${shop.location }</td>
									</c:otherwise>
								</c:choose>
							</tr><br>
						</c:forEach>
					</table>
					<br>

					<form action="/store/info.do">
						<select name="select">
							<option>--매장 유형별 정렬--</option>
							<option value="">전체 매장</option>
							<c:choose>
								<c:when test="${select == 'normal' }">
									<option value="normal">일반 매장</option>
								</c:when>
								<c:otherwise>
									<option value="normal">일반 매장</option>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${select == 'reserve' }">
									<option value="reserve">리저브 매장</option>
								</c:when>
								<c:otherwise>
									<option value="reserve">리저브 매장</option>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${select == 'drive' }">
									<option value="drive">드라이브 스루 매장</option>
								</c:when>
								<c:otherwise>
									<option value="drive">드라이브 스루 매장</option>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${select == 'store' }">
									<option value="store">스토어 매장</option>
								</c:when>
								<c:otherwise>
									<option value="store">스토어 매장</option>
								</c:otherwise>
							</c:choose>

						</select>
						<button onclick="submit">정렬</button>
					</form>
				</c:otherwise>
			</c:choose>
			</div>
	
	<button type="button" onclick="location.href='/store/index.do'">뒤로가기</button>
</div>
<c:import url="../default/footer.jsp" />