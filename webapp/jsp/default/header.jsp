<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type"		content="website">
<meta property="og:title"		content="Starbucks">
<meta property="og:url"			content="https://www.starbucks.co.kr/">
<meta property="og:image"		content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">Starbucks Korea</title><script type="text/javascript" src="/common/js/esabsbuxkr.js?single"></script> <!-- 220117 수정 -->
<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="/common/css/reset.css" rel="stylesheet">
<link href="/common/css/style.css?v=230809" rel="stylesheet">
<link href="/common/css/jquery.bxslider.css" rel="stylesheet">
<link href="/common/css/idangerous.swiper.css" rel="stylesheet">
<link href="/common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="/common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="/common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="/common/css/jquery-ui.css" rel="stylesheet">
<link href="/common/css/ezmark.css" rel="stylesheet">
<link href="/common/css/style_dt.css?v=20230320" rel="stylesheet"> <!-- 20230206 수정 -->


<!--  찬희 : 지도  -->
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=2j8txzcrl4"></script>
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=2j8txzcrl4&submodules=panorama"></script>
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=2j8txzcrl4&submodules=geocoder"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link href="/common/css/style_whatsnew.css" rel="stylesheet">
<link href="/common/css/style_store.css" rel="stylesheet">

<!-- 교웅 : 메뉴 -->
<link href="/common/css/style_menu.css" rel="stylesheet">


<!-- 민기 : 공지사항  -->
<link href="/css/style_whatsnew.css?v=20220221" rel="stylesheet">
<link href="/common/css/style_msr.css?v=211129" rel="stylesheet">


<script type="text/javascript">
var eFrequencyYn = 'N';
var eFrequencySeq = '180';
var eFrequencyPlannerYn = 'N';
</script>

<script>
document.getElementById("mob_gnb_ttl1").style.visibility ='visible';		

var div = document.getElementById('div');
if (div.style.display === 'none') {
    div.style.display = 'block';
} else {
    div.style.display = 'none';
}
</script>

	<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
	<link href="/common/css/style_main.css?v=221221" rel="stylesheet" />
	<link href="/common/css/style_main_newProm.css?v=210219" rel="stylesheet" /> <!-- 20201023 수정 -->

</head>

<body>
<div id="wrap">

<!-- 접근성_20171106 건너뛰기 링크  추가 -->
	<div id="skip-menu">
	  <a href="#gnb">메뉴바로가기</a>
	  <a href="#container">콘텐츠 바로가기</a>
	</div>

			<!-- MSR 영역 -->
			<div id="top_MSR" ><!-- 20170510 수정 : 클래스 eFreqTop 추가 -->
				<div class="top_msr_wrap" style="display:none;">
					<!-- 유저인포 -->
					<div class="user_greet">
						<div class="user_pic_area">
							<img alt="사용자 아이디" src="//image.istarbucks.co.kr/common/img/common/user_pic_sample.jpg">
							<p class="msr_user_mask msr_user_mask01"></p>
							<p class="msr_user_mask msr_user_mask02"></p>
							<p class="msr_user_mask msr_user_mask03"></p>
							<p class="msr_user_mask msr_user_mask04"></p>
						</div>
						<p class="user_greet_txt"><strong><!-- 홍길동 --></strong>님, 안녕하세요!</p>
						<p class="msr_btn_setting"><a href="/my/myinfo_modify_login.do">개인정보 수정</a></p>
					</div>
					<!-- 유저인포 end -->
					<span class="msr_sep_line"></span>

					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level" style="display:none;">
						<a href="/my/reward.do">
							<p class="level_star_bg en">0</p>
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. --></p>
						</a>
					</div>
					<!-- MSR 회원 end -->
					
					<!-- 일반회원 -->
					<div class="msr_lead">
						<a href="/msr/msreward/level_benefit.do">
							<p class="icon_msr_cup"></p>
							<p class="msr_lead_txt"><strong>스타벅스 리워드</strong><br>혜택에 편리함까지 더한<br>스타벅스 리워드를<br>즐겨보세요.</p> <!-- 스타벅스 리워드 수정 -->
						</a>
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line"></span>

					<!-- 카드인포 -->
					<!-- MSR 회원 -->
					<!-- 150805 DOM 수정 -->
					<div class="msr_card_info w_card_pic">
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index.do';" style="cursor:pointer;"><img alt="" /></p>
						<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<div class="msr_card_zone m_card_pic">
						<div class="mycard_area1">
							<img alt="카드이름">
						</div>

						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<!-- 150805 DOM 수정 -->
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<a href="javascript:void(0);">
							<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input.do';"><img alt="카드등록 아이콘" src="//image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
							<p class="sb_card_regi_txt"><strong>스타벅스 카드 등록</strong><br>카드를 등록하시고<br>다양한 리워드를<br>만나보세요.</p>
						</a>
					</div>
					<!-- 일반회원 end -->
					<!-- 카드인포 end -->

					<!-- 일반 회원 -->
					<!-- 일반 회원 end -->

					<span class="msr_sep_line"></span>
					<!-- 알림아이콘 -->
					<div class="notice_icons">
						<div class="notice_icon2">
							<a href="/my/calendar.do">
								<p></p>
								<span>캘린더</span>
							</a>
						</div>
						<div class="notice_icon3">
							<a href="/my/ecoupon.do">
								<p>
									<span class="validCoupontCnt">0</span>
								</p>
								<span>e-쿠폰</span>	
							</a>
						</div>
						
						<!-- 20170510 추가 : 아이콘추가 -->
						<div class="notice_icon4">
							<a href="/eFreq/status.do?TYPE=BARCODE">
								<p></p>
								<span>e-프리퀀시<br/>바코드</span>
							</a>
						</div>
						<!--// 20170510 추가 : 아이콘추가 -->
						
					</div>
					<!-- 알림아이콘 end -->
				</div>

				<div class="top_msr_nologin">
					<div class="top_msr_nologin_l">
						<i class="icon_before_login"></i>
						<p class="top_msr_mem_yet"><strong>스타벅스커피 코리아 회원이 아니세요?</strong><br>스타벅스커피 코리아 회원만의<br>특별한 혜택을 누릴 수 있습니다.</p>
						<div class="msr_nologin_btns">
							<ul>
								<li><a href="javascript:$.loginLib.showLayerLogin();">로그인</a></li>
								<li><a href="/mem/join2">회원가입</a></li>
							</ul>
						</div>
					</div>
					<span class="msr_sep_line"></span>
					<div class="top_msr_nologin_r">
						<i class="icon_sbcard_lead"></i>
						<p class="sbcard_lead_txt"><strong>스타벅스 카드를 가지고 계신가요?</strong><br>스타벅스 카드를 등록하시면, 스타벅스 리워드 만의<br>특별한 혜택을 누릴 수 있습니다.</p> <!-- 스타벅스 리워드 수정 -->
						<p class="btn_sbcard_regi">
							<a href="/my/mycard_info_input.do">카드 등록</a>
						</p>
					</div>
					<!-- 160628 수정 -->
					<div class="top_msr_nologin_b">
						<p class="egift_lead_txt"><strong>스타벅스 카드가 없으신가요?</strong><br>스타벅스 매장에서 구매하시거나,<br>PC/모바일웹, 스타벅스 앱에서<br>e-Gift를 “나에게 선물하기”로 구매 후,<br>편리하게 등록하세요!<br>스타벅스 리워드의 특별한 혜택! 생일 쿠폰을 드립니다!</p>
						<p class="btn_egift_regi">
							<a href="/msr/sceGift/gift_step1.do">e-Gift 선물하기</a>
						</p>
					</div>
					<!-- 160628 수정 end -->
				</div>
			</div>
			
			
<!-- MSR 영역 end -->





<!-- GNB 영역 -->



			<!-- 960 gnb -->
			<div class="tablet_gnb_wrap">
				<h1 class="logo"><a href="/">스타벅스 코리아</a></h1>
				<nav class="tablet_gnb_sep">
					<ul>
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2"></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="/my/index.do" required="login"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="/store/store_map.do"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb04"><a href="javascript:void(0);"><span class="a11y" role="button">메뉴열기</span></a><!-- 접근성_20171106 span추가 --></li>
					</ul>
				</nav>
			</div>
			<!-- 960 gnb end -->
			<!-- 640 gnb -->
			<div class="mob_gnb_dimm"></div>
			<div class="mob_gnb_wrap">
				<div class="mob_gnb_wrap_inner">
					<aside class="btn_gnb_close"><a href="javascript:void(0);" title="메뉴닫기" role="button">닫기</a><!-- 접근성_20171106 title 추가 --></aside>
					<div class="mob_gnb_search">
						<div class="mob_gnb_search_inner">
						<label for="search_text" class="a11y">검색어</label><!-- 접근성_20171106 검색어 추가 -->
							<input type="text" id="search_text" name="search_text">
							<a href="javascript:void(0);" class="mob_gnb_search_btn" titie="검색">Search</a><!-- 접근성_20171106 title 추가 -->
						</div>
					</div>
					<nav class="mob_gnb_menus">
						<ul>

							<li class="mob_gnb_ttl1"><a role="button" class="en" href="javascript:void(0);">My Starbucks<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/my/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/reward.do" required="login">리워드 및 혜택</a></li>
									<li><a href="/my/reward_star_history.do" required="login">별 히스토리</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/mycard_index.do" required="login">보유 카드</a></li>
									<li><a href="/my/mycard_info_input.do" required="login">카드 등록</a></li>
									<li><a href="/my/mycard_charge.do" required="login">카드 충전</a></li>
									<li><a href="/my/mycard_lost.do" required="login">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/msr/sceGift/gift_step1.do" required="login">선물하기</a></li>
									<li><a href="/my/egiftCard.do" required="login">선물 내역</a></li>
									<li><a href="/my/egiftCard_shopping_bag.do" required="login">장바구니 내역</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/ecoupon.do?t=REG" required="login">등록하기</a></li>
									<li><a href="/my/ecoupon.do?t=GIFT" required="login">선물하기</a></li>
									<li><a href="/my/ecoupon.do?t=USE" required="login">사용하기</a></li>
								</ul>
							</li>
							<li><a href="/my/calendar.do" required="login">My 캘린더</a></li>
							<!-- <li><a href="/my/drink_shop.do" required="login">My 음료/매장</a></li> -->
							<li><a href="/my/my_menu.do" required="login">My 메뉴</a></li>
							
							
									<li><a href="/my/vocList.do" required="login">My 고객의 소리</a></li>
							<li><a href="/my/eReceiptList.do" required="login">전자영수증</a></li>
							<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li><a href="/edt/expressDtList.do" required="login">My DT Pass</a></li>
							<li>
								<a role="button" href="javascript:void(0);">개인정보관리<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/my/myinfo_modify_login.do" required="login">개인정보확인 및 수정</a></li>
									<li><a href="/my/myinfo_out.do" required="login">회원 탈퇴</a></li>
									<li><a href="/my/myinfo_modify_pwd.do" required="login">비밀번호 변경</a></li>
								</ul>
							</li>
						</ul>
						
			
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/menu/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/drink_list.do">전체보기</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_brewed">브루드 커피</a></li><!-- 20230125 url 변경 -->
									<li><a href="/menu/drink_list.do?CATE_CD=product_espresso">에스프레소</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_blended">블렌디드</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_refresher">스타벅스 리프레셔</a></li> <!-- 20220614 수정 -->
									<li><a href="/menu/drink_list.do?CATE_CD=product_fizzio">스타벅스 피지오</a></li><!-- 20230125 url 변경 -->
									<li><a href="/menu/drink_list.do?CATE_CD=product_tea">티(티바나)</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li><a href="/menu/drink_list.do?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/food_list.do">전체보기</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_bakery">브레드</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_cake">케이크</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_hot_food">따뜻한 푸드</a></li><!-- 20230125 url 변경 -->
									<li><a href="/menu/food_list.do?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li><a href="/menu/food_list.do?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="/menu/food_list.do?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/product_list.do">전체보기</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_mug">머그</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_glass">글라스</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_vacuum">보온병</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_accessories">액세서리</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_present">선물세트</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_coffee">커피 용품</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<li><a href="/menu/product_list.do?CATE_CD=product_syrup">시럽</a></li>
									<!-- <li><a href="/menu/product_list.do?CATE_CD=product_planner">스타벅스 플래너</a></li> --> <!-- 20210602 삭제 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menu/card_list.do">전체보기</a></li>
									<li><a href="/menu/card_list.do?CATE_CD=product_offline">실물카드</a></li>
									<li><a href="/menu/card_list.do?CATE_CD=product_egift">e-Gift 카드</a></li>
								</ul>
							</li>
							<!-- <li>
								<a href="/wholecake/reserve_cake01.do">온라인 케익 예약 span class="mob_gnb_arrow_down"></span</a>
								<ul>
									<li><a href="javascript:void(0);">케익선택</a></li>
									<li><a href="javascript:void(0);">예약정보입력</a></li>
									<li><a href="javascript:void(0);">예약완료</a></li>
								</ul>
							</li> -->
							<li>
								<a role="button" href="javascript:void(0);">메뉴 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/menuStory/teavana.do">스타벅스 티바나</a></li>
									<li><a href="/store/store_coldbrew.do">스타벅스 콜드 브루</a></li> <!-- 230331 수정 -->
									<!-- <li><a href="/store/store_nitro_coldbrew.do">나이트로 콜드브루</a></li> -->
								</ul><!-- 20230125 순서변경 -->
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/store/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/store/store_map.do?disp=quick">빠른 검색</a></li>
									<li><a href="/store/store_map.do?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li><a href="/store/store_drive.do">드라이브 스루 매장</a></li>
							<li><a href="/store/store_reserve.do">스타벅스 리저브 매장</a></li>
							<li><a href="/store/store_community.do">커뮤니티 스토어 매장</a></li>
							<!-- <li> 
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a>접근성_20171106 role 추가
								<ul>
									<li><a href="/store/store_cheongdam.do">청담스타</a></li> 20210727 메뉴 비노출
									<li><a href="/store/store_star_field.do">티바나 바 매장</a></li>
									<li><a href="/store/store_park.do">파미에파크</a></li> 20210727 메뉴 비노출
								</ul>
							</li> --> <!-- 20230125 STORE > 매장이야기 삭제 -->
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">RESPONSIBILITY!!!<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/responsibility/index.do">한눈에 보기</a></li>
							<li><a href="/responsibility/starbucks_shared_planet.do">사회공헌 캠페인 소개</a></li> <!-- 20210820 메뉴명 수정 -->
							<li>
								<a role="button" href="javascript:void(0);">지역 사회 참여 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/hope_delivery.do">희망배달 캠페인</a></li>
									<li><a href="/responsibility/talent_donation.do">재능기부 카페 소식</a></li>
									<li><a href="/responsibility/community_store.do">커뮤니티 스토어</a></li>
									<li><a href="/responsibility/youth_resource.do">청년 지원 프로그램</a></li><!-- 202107 메뉴명 수정 -->
									<li><a href="/responsibility/our_agriculture.do">우리 농산물 사랑 캠페인</a></li>
									<li><a href="/responsibility/our_culture_defend.do">우리 문화 지키기</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">환경보호 활동<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/environment.do">친환경 활동</a></li><!-- 202107 메뉴명 수정 -->
									<li><a href="/responsibility/no_disposable_cup.do">일회용 컵 없는 매장</a></li>
									<li><a href="/responsibility/bean_recycling.do">커피 원두 재활용</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">윤리 구매<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/ethically_sourcing.do">윤리적 원두 구매</a></li>
									<li><a href="/responsibility/fair_trade.do">공정무역 인증</a></li>
									<li><a href="/responsibility/farmer_support.do">커피 농가 지원 활동</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">글로벌 사회 공헌<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/responsibility/sp_ethical_management.do">윤리경영 보고서</a></li>
									<li><a href="/responsibility/starbucks_foundation.do">스타벅스 재단</a></li>
									<li><a href="/responsibility/sp_global_month.do">지구촌 봉사의 달</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>  <!-- 스타벅스 리워드 수정 -->
							<li><a href="/msr/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 스타벅스 리워드 수정 -->
								<ul>
									<li><a href="/msr/msreward/about.do">스타벅스 리워드 소개</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="/msr/msreward/level_benefit.do">등급 및 혜택</a></li>
									<li><a href="/msr/msreward/star.do">스타벅스 별</a></li>
									<li><a href="/community/faq.do?menu_cd=STB2703&cate=F17">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
	
	
						<!-- // 20221121 추가 -->
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="/whats_new/index.do">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="/whats_new/campaign_list.do">전체</a></li>
									<li><a href="/whats_new/campaign_list.do?menu_cd=STB2812">스타벅스 카드</a></li>
									<li><a href="/whats_new/campaign_list.do?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="/whats_new/campaign_list.do?menu_cd=STB2814">온라인</a></li>
									
									
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="/whats_new/news_list.do">전체</a></li>
									<li><a href="/whats_new/news_list.do?cate=N01">상품 출시</a></li>
									<li><a href="/whats_new/news_list.do?cate=N02">스타벅스와 문화</a></li>
									<li><a href="/whats_new/news_list.do?cate=N03">스타벅스 사회공헌</a></li>
									<li><a href="/whats_new/news_list.do?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="/whats_new/store_event_list.do">일반 매장</a></li>
									<li><a href="/whats_new/store_event_list.do?search_date=1&tab=1">신규 매장</a></li>
								</ul>
							</li>
							<li><a href="/whats_new/notice_list.do">공지사항</a></li>
							<li><a href="/whats_new/wallpaper.do">월페이퍼</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- 640 gnb end -->

<!-- GNB 영역 end -->
			
			
			
			
<div id="mstopWrap">
	<div id="gnb">
		<!-- 서브 gnb -->
		<div class="sub_gnb_wrap">
			<div class="sub_gnb_wrap_inner">
				<h1 class="logo"><a href="/" title="스타벅스 메인페이지" >스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
				<nav class="util_nav">
					<ul>
						<c:choose>
							<c:when test="${not empty sessionScope.userId}">
								<li class="util_nav01 sign_out"><a href="/logout">Sign out</a></li>
							</c:when>
							<c:otherwise>
								<li class="util_nav01 sign_in"><a href="/login">Sign In</a></li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${sessionScope.userId eq 'admin' }">
								<li class="util_nav02"><a href="/admin_memberInfo">Member Management</a></li>
								<li class="util_nav03"><a href="/shop_admin_index">Store  Management</a></li>
								<li class="util_nav04"><a href="/board/boardWrite">공지글 쓰기</a></li>
							</c:when>
							<c:otherwise>	
								<li class="util_nav02"><a href="/mem/myinfo">My Starbucks</a></li>
								<li class="util_nav03"><a href="/store/find.do">Find a Store</a></li>
								<li class="util_nav04"><a href="/menu/cart/${userId}">My Cart</a></li>
							</c:otherwise>
						</c:choose>
						</ul>
				</nav>
				<p class="btn_search">
					<a href="javascript:void(0);"><img alt="통합검색" src="//image.istarbucks.co.kr/common/img/common/icon_magnifier_black.png"></a>
				</p>
				<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3"></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
			</div>
			<nav class="sub_gnb_nav">
				<div class="sub_gnb_nav_inner">
				</div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			
