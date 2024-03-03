<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>reward index</title>
</head>
<body>
<c:import url="/header" />

			<!-- container -->
			<div id="container">
				<!-- 서브 타이틀 -->
				<div class="sub_tit_wrap">
					<div class="sub_tit_inner">
						<h2><img src="//image.istarbucks.co.kr/img/event/2020/14_msr_tit.png" alt="STARBUCKS REWARDS"></h2> 
						<ul class="smap">
							<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li class="en"><a href="/msr/index.do" class="this">Starbucks Rewards</a></li>  
						</ul>
					</div>
				</div>
				<!-- 서브 타이틀 end -->
				<!-- 서브 메인 배너 -->
				<div class="msr_main_section">
					<div class="msr_bn_inner">
						<img class="m_pic" src="http://image.istarbucks.co.kr/common/img/msr/m_msr_main.jpg" alt="">
						<div class="msr_bn2_txt01">
							<img class="w_pic" src="//image.istarbucks.co.kr/img/event/2020/14_msr_bn_txt1.png" alt="스타벅스만의 특별한 혜택, 스타벅스 리워드를 만나보세요. 스타벅스를 사랑해주시는 고객님을 위해 별을 적립하여 혜택으로 돌려드리는 특별한 리워드 서비스입니다.">  
							<img class="m_pic" src="//image.istarbucks.co.kr/img/event/2020/14_m_msr_mtxt.png" alt="스타벅스만의 특별한 혜택, 스타벅스 리워드를 만나보세요. 스타벅스를 사랑해주시는 고객님을 위해 별을 적립하여 혜택으로 돌려드리는 특별한 리워드 서비스입니다.">  
						</div>
						<div class="msr_btn_wrap02">
							<ul>
								<li><a href="/msr/msreward/about.do">스타벅스 리워드 소개</a></li>  
								<li><a href="javascript:void(0);" required="login" data-href="/my/reward.do">My 리워드 확인</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 서브 메인 배너 end -->
				<!-- news -->
				<div class="newsArea">
                    <div class="newsArea_left"></div>
                    <div class="newsArea_right"></div>
                    <div class="newsArea_bg">
                        <div class="newsArea_bgl">
                            <dl>
								<dt>
									<img class="w_pic" src="//image.istarbucks.co.kr/common/img/menu/news_title.png" alt="보도자료">
									<img class="m_pic" src="//image.istarbucks.co.kr/common/img/common/icon_board_speaker.png" alt="보도자료">
								</dt>
								<dd>
									<ul class="news_result" style="direction: ltr; font-size: 13px; color: rgb(255, 255, 255);"><li style=""><a href="javascript:pageViewBodo(5162)">스타벅스가 제안하는 피크닉 아이템! 가을맞이 ‘피크닉 픽(PICK) 세트’ 할인 판매</a></li><li style="display: none;"><a href="javascript:pageViewBodo(5161)">스타벅스, 파트너 화합의 장 ‘장애인 바리스타 챔피언십’ 개최</a></li><li style="display: none;"><a href="javascript:pageViewBodo(5153)">스타벅스, 수험생 응원 위한 초콜릿 및 MD상품 출시</a></li><li style="display: none;"><a href="javascript:pageViewBodo(5177)">내일부터 ‘더블 플래너 이벤트’ 연다! 스타벅스, 크리스마스 프로모션 시작</a></li><li style="display: none;"><a href="javascript:pageViewBodo(5165)">스타벅스, ‘겨울 e-프리퀀시 이벤트’ 시작!</a></li></ul>
								</dd>
							</dl>
                            <p class="btn"><a href="/footer/company/news_list.do"><img src="//image.istarbucks.co.kr/common/img/coffee/icon_coffee_notice_more.png" alt="보도자료 바로가기"></a></p>
                        </div>
                        <div class="newsArea_bgr">
                            <p class="tit">
								<img class="w_pic" src="//image.istarbucks.co.kr/common/img/menu/useInfo_txt.png" alt="새로워진 스타벅스 웹사이트 이용안내">
								<img class="m_pic" src="//image.istarbucks.co.kr/common/img/menu/m_useInfo_txt.png" alt="새로워진 스타벅스 웹사이트 이용안내">
							</p> 
                            <p class="btn"><a href="/util/web_tip.do"><img src="//image.istarbucks.co.kr/common/img/coffee/icon_coffee_notice_more.png" alt="새로워진 스타벅스 웹사이트 이용안내 바로가기"></a></p>
                        </div>
                    </div>
                </div>
				<!-- news end -->
				<!-- 프로모션 & 이벤트 -->
				
				<!-- 프로모션 & 이벤트 end -->
				<!-- 새소식 -->
				
				<!-- 새소식 end -->
			</div>
			<!-- container end -->

<c:import url="/footer" />
</body>
</html>