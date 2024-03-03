<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/header" />


<!-- 서브 타이틀 -->
<div class="sub_tit_wrap">
	<div class="sub_tit_inner">
		<h2>
			<img src="/img/whatsnew/notice_tit.jpg" alt="공지사항" />
		</h2>
		<ul class="smap">
			<li><a href="/"><img
					src="//image.istarbucks.co.kr/common/img/common/icon_home.png"
					alt="홈으로"></a></li>
			<li><img class="arrow"
				src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
				alt="작은 맵 화살표"></li>
			<li class="en"><a href="/whats_new/index.do">WHAT'S NEW</a></li>
			<li><img class="arrow"
				src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
				alt="작은 맵 화살표"></li>
			<li><a href="/boardForm" class="this">공지사항</a></li>
		</ul>
	</div>
</div>
<!-- 서브 타이틀 end -->



<div id="container" align="center">

	<div class="notice_wrap">
		<div class="news_sch_wrap">
			<p>
				<label for="sch_bar" class="a11y">검색어</label>
				<input type="text" name="sch_bar" id="sch_bar"
					placeholder="검색어를 입력해 주세요."> <a href="javascript:void(0)"
					class="newBoardSearchBtn">검색</a>
			</p>
		</div>


		<div>
			<c:choose>
				<c:when test="${empty boards }">
					<h1>등록된 데이터가 존재하지 않습니다.</h1>
				</c:when>

				<c:otherwise>
					<table summary="공지사항" class="notice_tb">

						<caption class="hid">공지사항 번호, 제목, 날짜, 조회수 테이블</caption>
						<colgroup>
							<col width="5.45454%">
							<col width="74.5454%">
							<col width="10.90909%">
							<col width="*">
						</colgroup>

						<tr>
							<th scope="col">NO</th>
							<th scope="col">제목</th>
							<th scope="col">날짜</th>
							<th scope="col">조회수</th>
						</tr>

						<c:forEach var="board" items="${ boards}">
							<tr>
								<td>${board.no }</td>
								<td onclick="location.href='boardContent?no=${board.no }'">
									${board.title }</td>
								<td>${board.writeday }</td>
								<td>${board.readcount }</td>
							</tr>
						</c:forEach>


					</table>
				</c:otherwise>
			</c:choose>
			<div class ="news_pagination">
			<tr>
				<td colspan="4" align="center">${result }</td>
			</tr>
			</div>
		</div>
	</div>
</div>

<c:import url="/footer" />











