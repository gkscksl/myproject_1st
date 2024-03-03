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


<script>
	function deleteCheck() {
		result = confirm('진짜로 삭제하겠습니까?');
		if (result == true) {
			location.href = '/board/boardDeleteProc?no=${board.no}'
		}
	}
</script>

<div id="container">
	<div class="wn_cont">
		<section class="notice_veiw_wrap">

			<header>
				<ul class="sns_wrap">
				<a href= "https://www.facebook.com/?locale=ko_KR">
				<img class="bnt" src="//image.istarbucks.co.kr/common/img/whatsnew/icon_cpv_f.png" alt="페이스북 공유하기 새창" ></a>
				</ul>
				
			</header>

			<c:choose>
				<c:when test="${sessionScope.userId eq 'admin'}">
					<article class="notice_view_info_inner">${board.content }</article>
					<div class="btn_notice_wrap">
						<p class="btn_notice_list">
							<a href="/board/boardForm">목록</a>
						</p>
					</div>
					<div class="btn_notice_wrap">
						<p class="btn_notice_list">
							<a href="/board/boardModify?no=${board.no}">수정</a>
						</p>
					</div>
					<div class="btn_notice_wrap">
						<p class="btn_notice_list">
							<a onclick="deleteCheck()">삭제</a>
						</p>
					</div>
					
							
				</c:when>
				<c:otherwise>
					<article class="notice_view_info_inner">${board.content }</article>
					<div class="btn_notice_wrap">
						<p class="btn_notice_list">
							<a href="/board/boardForm">목록</a>
						</p>
					</div>
				</c:otherwise>
			</c:choose>

		</section>
		<table summary="새소식 윗글, 아랫글" class="pn_content_tb">
			<caption class="hid">새소식 윗글, 아랫글 테이블</caption>

			<colgroup>
				<col width="18.181818%">
				<col width="89.818182%">
			</colgroup>
			
			<tbody id="next">
				<tr>
					<th class="fth" scope="row" id="next_title">윗글</th>
					<td class="ftd"><a href="${board.title }">${board.title}</a></td>
				</tr>
				<tr>
					<th class="lth" scope="row" id="prev_title">아랫글</th>
					<td class="ltd"><a href="${board.title }">${board.title }</a></td>
				</tr>
			</tbody>
			
			
		</table>


	</div>
</div>


<c:import url="/footer" />

















