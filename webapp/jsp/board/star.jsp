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
							<!-- container -->
			<div id="container">
				<!-- 서브 타이틀 -->
				<div class="sub_tit_wrap">
					<div class="sub_tit_inner">
						<h2><img src="//image.istarbucks.co.kr/common/img/msr/msreward/star_tit1.jpg" alt="스타벅스 별"></h2>
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li class="en"><a href="/msr/index.do">Starbucks Rewards</a></li> <!-- 스타벅스 리워드 수정 -->
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li><a href="/msr/msreward/about.do">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li><a href="/msr/msreward/star.do" class="this">스타벅스 별</a></li>
						</ul>
					</div>
				</div>
				<!-- 서브 타이틀 end -->
				<div class="msr_cont">
					<!-- (마이스타벅스 별) bar -->
					<section class="star_bar">
						<article class="star_bar_inner">
							<img class="star_bar_img01" src="https://image.istarbucks.co.kr/img/event/2020/16_star_bar_img01.jpg" alt="등록된 카드로 결제할 때마다 스타벅스 별이 적립됩니다! 적립된 별★은 스타벅스 리워드 (Starbucks Rewards) 서비스를 통해 다양한 혜택으로 돌려드립니다. - 별 ★ 의 유효기간은 1년이며, 유효기간이 지나면 별★이 사라집니다."> <!-- 스타벅스 리워드 수정 -->
							<!-- 150620 모바일 이미지 추가 - 문진욱 -->
							<img class="star_mbar_img01" src="	https://image.istarbucks.co.kr/common/img/msr/msreward/star_mbar_img01.png" alt="등록된 카드로 결제할 때마다 스타벅스 별★이 적립됩니다!">
						</article>
					</section>
					<!-- (마이스타벅스 별) bar end -->
					<!-- (마이스타벅스 별) info1 -->
					<section class="star_info1">
						<article class="star_info1_inner">
							<dl>
								<dt>스타벅스 별★은 하나의 계정에 통합 적립됩니다!</dt>
								<dd>
									한 번의 주문을 여러 장의 스타벅스 카드로 결제한 경우, 적립조건을 충족한 첫 번째 카드에 적립됩니다. 
									<p class="t">- 제시한 카드 중 등록된 첫 번째 카드에 적립됩니다.</p>
								</dd>
								<dd>
									구매한 제품을 반품, 혹은 거래 취소하실 경우 적립되었던 별★도 사라집니다. 
									<p class="t">- 이 경우 실제 별의 수와 온라인에 표시된 별의 수가 다를 수 있습니다.</p>
								</dd>
							</dl>
						</article>
					</section>
					<!-- (마이스타벅스 별) info1 end -->

					<!-- (마이스타벅스 별) info2 -->
					<section class="star_info2">
						<article class="star_info2_inner">
							<dl>
								<dt>1년 간 30개의 별★을 차곡차곡 모으면 당신도 Gold Level!</dt>
								<dd>적립된 별★을 통해 스타벅스 리워드(Starbucks Rewards)의 혜택을 누리며, Gold Level의 유효기간을 연장할 수 있습니다.</dd> <!-- 스타벅스 리워드 수정 -->
								<dd>
									최상위 등급인 Gold Level이 되면 별★이 12개 모일 때마다 무료 음료 쿠폰을 제공 받으실 수 있습니다.
									<p class="t">- Gold Level 진입일로부터 1년간 추가로 별★ 30개가 모이면 Gold Level이 1년 더 연장되며, 모인 별★이 30개 미만일 경우에는 Green Level로 내려갑니다.</p>
									<p class="t">- Green Level로 내려갔더라도 추가로 별 ★  30개가 채워지면 다시 Gold Level로 올라갑니다. <span>(단, Green Level로 내려간 후에는 Gold Level에서 별★ 12개마다 드렸던 무료 음료를 위해 적립된 별★들은 사라집니다.)</span> </p>
								</dd>
							</dl>
						</article>
					</section>
					<!-- (마이스타벅스 별) info2 end -->

				</div>
			</div>
			<!-- container end -->

			<br>
<br>
<c:import url="/footer" />
</body>
</html>