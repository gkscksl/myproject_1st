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

<!-- 서브 타이틀 end -->
				<div class="msr_cont">
					<!-- (등급 및 혜택) bar -->
					<section class="levelBenefit01_bar">
						<article class="levelBenefit01_bar_inner">
							<p class="levelBenefit01_bar_img01"><img src="//image.istarbucks.co.kr/common/img/msr/msreward/levelBenefit01_bar_img01.png" alt="별별★마다 다른 레벨, 어떤 리워드 서비스가 따라올까요? 스타벅스 카드를 등록하면 사용할 때 마다 따라오는 별 적립 서비스. 쌓이는 별에 따라 레벨도 오르고, 혜택도 UP UP! 각 레벨에 따른 혜택을 지금부터 자세히 알아보세요."></p>
							<p class="levelBenefit01_bar_mimg01"><img src="//image.istarbucks.co.kr/common/img/msr/msreward/levelBenefit01_bar_mimg01.png" alt="별별★마다 다른 레벨, 어떤 리워드 서비스가 따라올까요?"></p>
							<!-- 150825 DOM 수정 -->
							<p class="m_scard_txt" style="padding-top:10px;">스타벅스 카드를 등록하면 사용할 때 마다 따라오는 별 적립 서비스, 쌓이는 별에 따라 레벨도 오르고, 혜택도 UP UP!<br>각 레벨에 따른 혜택을 지금부터 알아보세요.</p>
							<!-- 150825 DOM 수정 end -->
						</article>
					</section>
					<!-- (등급 및 혜택) bar end -->

					<!-- (등급 및 혜택) info1 -->
					<section class="levelBenefit01_info1">
						<article class="levelBenefit01_info1_inner">
							<h3>회원 등급별 혜택</h3>
							<ul class="levelBenefit01_info">
								<li class="l_info1">
									<ul class="uimg">
										<li>
											<span>0</span>
											<dl>
												<dt class="en">Welcome Level</dt>
												<dd>스타벅스 카드를 등록하세요</dd>
											</dl>
										</li>
									</ul>
									<!-- 20160223 김민호 수정 -->
									<ul class="text">
										<li>- 스타벅스 카드로 음료 구매 시,  Free Extra 1개 제공</li>
										<li>- 회원 가입 후 방문별이 적립되는 첫 구매 시, 익일 웰컴 첫 구매 무료 음료 쿠폰 제공</li> <!-- 20211124 수정 -->
										<li>- 기능 설정 후 스타벅스 카드로 결제 시,<br>&nbsp;<span>현금영수증 자동 발행</span></li><!-- 20181205 &nbsp 추가 -->
										<li>- 분실 신고 시점의 카드 잔액 보호</li>
										<li>- 자동 충전 5만원 이상 설정 후, <br><span>자동 충전 발생 시마다 익일 제조 음료 1+1 쿠폰 제공</span><br><span class="ct">(충전 금액 합산은 적용되지 않습니다.)</span></li> <!-- 230915 문구 변경 --> <!-- 230926 문구 변경 -->
									</ul>
									<!-- 20160223 김민호 수정 end -->
								</li>
								<li class="l_info2">
									<ul class="uimg">
										<li>
											<span>5</span>
											<dl>
												<dt class="en c_007042">Green Level</dt>
												<dd>별 5개만 모아도 레벨 업!</dd>
											</dl>
										</li>
									</ul>
									<p class="b_text"><span class="t en">Welcome Level</span> 혜택 모두 포함</p>
									<p class="newBTxt">(웰컴 첫 구매 무료 음료 쿠폰 제외)</p> <!-- 20211213 수정 -->
									<!-- 20160223 김민호 수정 -->
									<ul class="text">
										<!-- 20181205 수정 -->
										<li>- 생일 축하 무료 음료 e-쿠폰 제공</li>
										<li>- 스타벅스 리저브™ 원두 구매 시, 스타벅스 리저브™<br/>&nbsp;음료 or 카페 아메리카노(Hot/Iced) e-쿠폰 제공<br class="show_mob"><span class="ls">※단, 결제 수단 변경 및 교환증으로 상품교환, 임직원 할인 또는 e-Gift Item 구매 시, 리워드 혜택 미제공</span><br class="show_mob"><span class="ls">※카페 아메리카노 (Hot/Iced) e-쿠폰은 디카페인, ½ 디카페인, 블론드 원두로도 변경하여 사용 가능</span></li> <!-- 20211124 수정 -->
										<li>- 250g 원두 or 12개입 VIA 구매 시,<br/>&nbsp;카페 아메리카노(Hot/Iced) e-쿠폰 제공<br class="show_mob"><span class="ls">※단, 결제 수단 변경 및 교환증으로 상품교환, 임직원 할인 또는 e-Gift Item 구매 시, 리워드 혜택 미제공</span><br class="show_mob"><span class="ls">※카페 아메리카노 (Hot/Iced) e-쿠폰은 디카페인, ½ 디카페인, 블론드 원두로도 변경하여 사용 가능</span></li> <!-- 20211124 수정 -->
										<li>- 티바나 패키지 티 구매 시, 풀 리프 티(Hot/Iced) e-쿠폰 제공<br class="show_mob"><span class="ls">※단, 결제 수단 변경 및 교환증으로 상품교환, 임직원 할인 또는 e-Gift Item 구매 시, 리워드 혜택 미제공</span></li> <!-- 20210504 수정 -->
										<li>- 제조 음료 1+1 쿠폰(이벤트 진행 시 발급)</li> <!-- 230915 문구 변경 --> <!-- 230926 문구 변경 --> <!-- 230927 문구 변경 -->
										<li>- 회원 전용 이벤트</li>
										<!-- //20181205 수정 -->
									</ul>
									
									<!-- 20160223 김민호 수정 end -->
								</li>
								<li class="l_info3">
									<ul class="uimg">
										<li>
											<span>30</span>
											<dl>
												<dt class="en c_b79855">Gold Level</dt>
												<dd>별 12개 적립 시 무료 음료 1잔을<br>드립니다.</dd><!-- 20210914 수정 -->
											</dl>
										</li>
									</ul>
									<p class="b_text"><span class="t c_007042 en">Green Level</span> 혜택 모두 포함</p>
									<ul class="text">
										<li>- 골드회원만의 e-Gold Card 발급</li>
										<li>- 별 ★ 12개 적립 시마다 무료 음료 쿠폰 제공</li>
										<li>- Personalized Offer e-쿠폰 제공</li>
									</ul>
								</li>
							</ul>
							<!-- 160628 수정 -->
							<ul class="l_info1_text">
								<li class="mb5">My DT Pass 서비스 이용 : 차량번호를 사전에 등록하시면, DT 매장에서 주문 후 결제 단계 없이 상품을 빠르게 수령하실 수 있습니다. <a href="/edt/expressDtList.do" >차량번호 등록하기</a></li>
								<li class="mb5">스타벅스 카드 등록은 e-Gift Card &gt; 선물하기 &gt; 받는사람 &gt; 나에게 선물하기를 통해서 편리하게 카드 구매 후, 등록하실 수 있습니다.
								<a href="/msr/sceGift/gift_step1.do">e-Gift Card 선물하기</a>
								</li>
								<li class="mb5">최초 카드 등록 시, Welcome Level이 바로 적용됩니다. Welcome Level이 되신 후 방문별이 적립되는 첫 구매 시, 무료음료 쿠폰을 받으실 수 있어요!</li> <!-- 20200904 수정 -->
								<li class="mb5">등록된 스타벅스 카드 또는 쿠폰으로 결제 시, 전자영수증이 함께 발행됩니다.</li>
								<li class="mb5">영수증 쿠폰을 e-쿠폰으로 발행 받거나 모바일 APP/WEB에 등록하여 사용하실 수 있습니다.</li>
								<li class="mb5">Green / Gold Level은 해당 등급조건을 충족한 다음 날부터 적용됩니다.</li>
								<li class="mb5">별★의 유효기간은 일년입니다.</li>
								<li class="mb5">제조 음료 1+1 쿠폰 및 그린/골드 대상 회원 전용 이벤트는 프로모션 운영에 따라 변경될 수 있습니다.</li> <!-- 230915 문구 변경 --> <!-- 230927 문구 변경 -->
								<li class="mb5">회원 등급별 혜택은 등록된 스타벅스 카드로 결제 시 적용됩니다.</li><!-- 20181205 수정 -->
								<li class="mb5">자동 충전이란? 카드 별로 ‘원하는 날짜’에 또는 ‘잔액이 설정한 기준 금액보다 낮을 경우’ 선택한 금액이 자동으로 충전되도록 하는 편리한 충전 서비스입니다.<br />(5만원 이상 자동 충전 설정 후, 자동 충전 발생 시마다 익일 제조 음료 1+1 쿠폰을 발급해 드립니다.)<br /><a href="/my/mycard_charge.do?TYPE=1">자동충전 설정 바로가기</a></li> <!-- 230915 문구 변경 --> <!-- 230926 문구 변경 -->
							</ul>
							<!-- 160628 수정 end -->
						</article>
					</section>
					<!-- (등급 및 혜택) info1 end -->					
				</div>
				<!-- (등급 및 혜택) info2 -->

			<!-- container end -->

			<br>
<br>
<c:import url="/footer" />
</body>
</html>