<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>join2</title>
</head>
<body>
<c:import url="/header" />



			<div id="container">
				<!-- 서브 타이틀 -->
				<div class="sub_tit_wrap">
					<div class="sub_tit_inner">
						<h2><img src="//image.istarbucks.co.kr/img/event/2020/15_msr_tit1.jpg" alt="스타벅스 리워드 소개"></h2>
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li class="en"><a href="/msr/index.do">Starbucks Rewards</a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li><a href="/msr/msreward/about.do">스타벅스 리워드</a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li><a href="/msr/msreward/about.do" class="this">스타벅스 리워드 소개</a></li>
						</ul>
					</div>
				</div>
				<!-- 서브 타이틀 end -->
				<!-- 스타벅스 리워드 소개 -->
				<section class="msr_section">
					<p class="mb40">
						<img class="msr_main_bn" src="//image.istarbucks.co.kr/img/event/2020/15_msr_main_bn.jpg" alt="스타벅스만의 특별한 혜택, 스타벅스 리워드, 스타벅스 리워드는 스타벅스를 사랑해주시는 고객님을 위해 별 ★ 을 적립하여 혜택으로 돌려드리는 특별한 리워드 서비스입니다. 등록된 스타벅스 카드를 매장에서 사용해보세요. 스타벅스의 또 다른 즐거움을 느끼실 수 있습니다!">
						<img class="msr_main_mbn" src="//image.istarbucks.co.kr/img/event/2020/15_msr_main_mbn.jpg" alt="스타벅스만의 특별한 혜택 스타벅스 리워드">
					</p>
					<p class="msr_main_mbn_txt">스타벅스 리워드는 스타벅스를 사랑해주시는 고객님을 위해 별★을 적립하여 혜택으로 돌려드리는 특별한 리워드 서비스입니다. 등록된 스타벅스 카드를 매장에서 사용해보세요. 스타벅스의 또 다른 즐거움을 느끼실 수 있습니다!</p>
					<div class="msr_btn_wrap">
						<p class="use_term_btn"><a href="/footer/etc/rules_msr.do">스타벅스 카드 이용약관</a></p>
					</div>
					<div class="msr_program">
						<img class="w_pic" src="//image.istarbucks.co.kr/common/img/msr/msreward/msr_main_visual.jpg" alt="">
						<img alt="별★을 차고차곡 쌓으세요! 스타벅스의 다양한 혜택을 경험할 수 있습니다! 30개의 별★이 모이면 Gold Level이 됩니다! 일 년 동안 30개의 별★이 모이면 Gold Level이 1년 연장됩니다." class="msr_main_mvisual" src="//image.istarbucks.co.kr/common/img/msr/msreward/msr_main_mvisual.jpg">
						<!-- p class="msr_txt1"><img src="//image.istarbucks.co.kr/common/img/msr/msreward/msr_txt1.png" alt="별을 차곡차곡 쌓으세요!" /></p>
						<p class="msr_txt2"><img src="//image.istarbucks.co.kr/common/img/msr/msreward/msr_txt2.png" alt="30개의 별★이 모이면 Gold Level이 됩니다! 일 년 동안 30개의 별★이 더 모이면 Gold Level이 1년 연장됩니다." /></p -->
						<!--  ul class="msr_program_detail">
							<li class="circle circle1">
								<p class="star_level en">W</p>
								<p class="star_txt en">Welcome Level</p>
							</li>
							<li class="circle circle2">
								<p class="star_level en">G</p>
								<p class="star_txt en">Green Level</p>
							</li>
							<li class="circle circle3">
								<p class="star_level en">G</p>
								<p class="star_txt en">Gold Level</p>
							</li>
						</ul -->
						<p class="btn_level_view"><a href="/msr/msreward/level_benefit.do">레벨별 혜택 상세 보기</a></p>
						<!-- 150620 아이콘 삭제 - 문진욱 -->
					</div>
				</section>
				<!-- 스타벅스 리워드 소개 end -->
			</div>
			<!-- container end -->

			<br>
<br>
<c:import url="/footer" />
</body>
</html>