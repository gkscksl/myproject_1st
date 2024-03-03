<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- main visual  /  -->
	<div id="container"><!-- 접근성_20171201 container 추가 -->
		<div id="topWrap">
			<!-- 플로팅 뱃지 안내 -->
			<div class="layer_floating">
				
					<div 
						 class="badge_cont2">
						<a href="https://www.starbucks.co.kr/footer/co_sales/index.do"  onclick="GaFloating('B2B 기업 구매 페이지')">
							<img src="https://image.istarbucks.co.kr/upload/banner/floatingbnr/Mn0ecH_20220711153123340.png" alt="B2B 기업 구매 페이지" class="pc-badge">
							<img src="https://image.istarbucks.co.kr/upload/banner/floatingbnr/Mn0ecH_20220711153127215.png" alt="B2B 기업 구매 페이지" class="mobile-badge">
						</a>
					</div>
				
			</div>
			<!-- //플로팅 뱃지 안내 -->

			
			
				
			<!-- s: 메인 TOP 배너(230206) -->
<style type="text/css">
    .main-visual_wrap {height:32vw; background-image:url('https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_disney2_top_bg.jpg');}
    .main-visual_wrap .main-visual_inner {max-width:100%;}
    .main-visual_slogan, .btn_slogan {position:absolute; width: 25.6%; left: 10%;}
    .main-visual_slogan {top: 36%;}
    .btn_slogan {z-index: 10; top: 60%; text-align: center;}
    .btn_slogan a {width:24%; margin:0 auto; color: #401b0d; border:2px solid #401b0d; transition:background-color .7s, color .7s, border-color .7s; -webkit-transition:background-color .7s, color .7s, border-color .7s; text-decoration: none;}
    .btn_slogan a:hover {background-color:#401b0d; color: #fff; text-decoration: underline;}

    .main-visual_set {height:100%;}
    .set_01 {z-index: 9; top: 10.8%; left: 37%; width: 17.3%;}
    .set_02 {z-index: 8; top: 47%; left: 65.7%; width: 16.5%;}
    .set_03 {z-index: 6; top: 19%; right: 28%; width: 16%;}

    .set_common:after {display:none;}

    .reserve_magazine_wrap .reserve_detail-btn_wrap {width:100% !important;} /* (필수)리저브 매거진 */
    /* media queries pc */
    /*
    @media screen and (max-width:1400px) {
        .main-visual_wrap {background-position:36% bottom;}
        .main-visual_slogan, .btn_slogan {left:-6%; width: 400px;}
        .set_01 {top: 35.7%; left: 34.5%;}
        .set_02 {top: 35.7%; right: 7.2%;}
        .set_03 {top: 16.3%; left: 35%;}
        .set_04 {top: 19.7%; right: -6.5%;}
        .btn_slogan {top:63.5%;}
    }
    */
    @media screen and (min-width:960px) and (max-width:1340px) { /* 기존 1130px */
        /*
        .main-visual_wrap {height:41vw; background-position:28% bottom;}
        .main-visual_wrap .main-visual_inner {max-width:100%;}
        .main-visual_slogan, .btn_slogan {top: 34%; left: 6.5%; width: 28%;}
        .btn_slogan {top:62%;}
        .set_01 {top: 34%; left: 41.5%; width: 25%;}
        .set_02 {top: 33.5%; right: 15.2%; width: 20.5%;}
        .set_03 {top: 16.1%; left: 42%; width: 21%;}
        .set_04 {top: 18%; right: 5.4%; width: 23%;}
        */
        .btn_slogan a {font-size: 13px; width:34%;}
    }
    /* media queries mobile */
    @media screen and (max-width:960px) {
        .layer_floating {top:108px; width:25.7%; right:1.8%;} /* 시즌 음료 가림 */

        .main-visual_wrap {width:auto; height:291vw; padding-top:9px; background-image:url('https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_disney2_top_bg.jpg'); background-position:center top; box-sizing:border-box; margin-top:9px;}
        .main-visual_slogan {width: 46%; top: 4.9%; left: 15.5%;}
        .main-visual_slogan .m-slogan {width: 100%; display: block;}
        .main-visual_slogan .pc-slogan {display: none;}

        .pc-drink {display:none;}
        .m-drink {display:block;}

        .set_common {bottom:auto; margin: 0;}
        .set_01 {z-index: 8; top: 17.4%; left: 12.5%; width: 90%; max-width: 100%; overflow: hidden;}
        .set_02 {z-index: 9; top: 49%; left: 12%; width: 77%; max-width: 100%;}
        .set_03 {z-index: 10; top: 64%; left: 17%; width: 84.1%; max-width: 100%;}

        .btn_slogan {z-index:10; top:89%; left: 50%; transform:translateX(-50%); width:100%; margin:0 auto; padding-top:0; height:auto; bottom:auto;}
        .btn_slogan a {width:36%; color:#fff; border-color:#fff; line-height:10vw; font-size:22px; font-weight:bold; border-radius: 3px;}
        .btn_slogan a:hover {background-color:#401b0d;}
        
    }
    @media screen and (max-width:480px) {
      .btn_slogan a {font-size:16px;}
    }
    @media screen and (max-width:320px) {
        .main-visual_wrap {height:347vw;}
    }
  </style>
  <div class="main-visual_wrap">
      <div class="main-visual_inner">
          <div class="main-visual_slogan">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_disney2_top_logo.png" alt="LOVE ME" class="pc-slogan">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_disney2_top_logo.png" alt="LOVE ME" class="m-slogan">
          </div>
      
          <div class="main-visual_set">
              <div class="set_common set_01">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_disney2_top_drink1.png" alt="미니 블루베리 요거트 프라푸치노" class="pc-drink">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_disney2_top_drink1.png" alt="미니 블루베리 요거트 프라푸치노" class="m-drink">
              </div>
              <div class="set_common set_02">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_disney2_top_drink2.png" alt="블랙 글레이즈드 라떼" class="pc-drink">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_disney2_top_drink2.png" alt="블랙 글레이즈드 라떼" class="m-drink">
              </div>
              <div class="set_common set_03">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_disney2_top_drink3.png" alt="마롱 헤이즐넛 라떼" class="pc-drink">
              <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_disney2_top_drink3.png" alt="마롱 헤이즐넛 라떼" class="m-drink">
              </div>
          </div>
      
          <div class="btn_slogan">
              <a href="https://www.starbucks.co.kr/whats_new/campaign_view.do?pro_seq=2296">자세히 보기</a>
          </div>
      </div>
  </div>
  <!-- e: 메인 TOP 배너(230206) -->
				
				
			
		</div>
		

			
			<section class="line_notice">
				<div class="line_notice_left"></div>
				<div class="line_notice_right"></div>
				<div class="line_notice_bg">
					<div class="line_notice_bgl">
						<div class="line_notice_inner">
							<dl class="line_notice_inner_l">
								<dt class="notice_ttl">
									<img src="https://image.istarbucks.co.kr/common/img/common/notice_ttl.png" alt="공지사항">
								</dt>
								<dd>
									<ul class="news_result">
									</ul>
								</dd>
							</dl>
							<p class="line_notice_inner_r">
								<span><a href="javascript:void(0);" title="공지사항 더보기">더보기</a><!-- 접근성_20171201 title 추가 --></span>
							</p>
						</div>
					</div>
					<div class="line_notice_bgr">
						<a href="javascript:void(0);">
							<p class="prom_ttl">스타벅스 프로모션</p>
							<span class="btn_prom"><img src="https://image.istarbucks.co.kr/common/img/common/btn_prom_down.png" alt="스타벅스 프로모션 펼쳐보기" role="button" /><!-- 접근성_20171201 alt, role 추가 --></span><!-- 150818 성연욱 수정 -->
						</a>
					</div>
				</div>
			</section>
			<!-- notice end -->
			<!-- 프로모션 배너 -->
			<section class="main_prom_bnr">
				<div class="main_prom_bnr_swiper slider">
					<ul class="main_prom_bxslider">
					</ul>
					<div class="main_slider_controller">
						<div class="main_slider_controls"></div>
						<div class="main_slider_pagers"></div>
					</div>
					<p class="main_prevBtn"><a href="javascript:void(0)"><span class="a11y">이전 프로모션</span></a></p>
					<p class="main_nextBtn"><a href="javascript:void(0)"><span class="a11y">다음 프로모션</span></a></p>
				</div>
			</section>
			<!-- 프로모션 배너 end -->
			
			<!-- 메인 스타벅스 리워드 리뉴얼 -->
			<section class="new-rewards_wrap" style="display:none;">
				<div class="new-rewards_inner">
					<div class="new-rewards_logo">
						<img src="https://image.istarbucks.co.kr/common/img/main/rewards-logo.png" alt="Starbucks Rewards" /> <!-- 20200821 수정 -->
					</div>
					
					<div class="new-rewards_conts">
						<div class="info-cont">
							<div class="info-cont_txt">
								<h2>
									스타벅스만의 특별한 혜택, <br class="mobile-br"> <br class="pc-br"><strong>스타벅스 리워드</strong>
								</h2>
								<p>
									<strong>스타벅스 회원이세요?</strong> <br class="mobile-br"> 로그인을 통해 <br class="pc-br">나만의 리워드를 확인해보세요.
									<br>
									<strong>스타벅스 회원이 아니세요?</strong> <br class="mobile-br"> <br class="pc-br">가입을 통해 리워드 혜택을 즐기세요.
								</p>
							</div>
							<div class="btn-signin_group">
								<a href="/mem/join.do" class="btn-signin_join">회원가입</a>
								<a href="/login/login.do" class="btn-signin_login">로그인</a>
							</div>
						</div>
						
							<div class="gift-cont_txt">
								<p>
									회원 가입 후, 스타벅스 e-Gift Card를 <br class="pc-br"><br class="mobile-br"><strong>"나에게 선물하기"로 구매하시고, <br class="mobile-br">편리하게 등록하세요!</strong>
									<br>
									카드를 등록하여 스타벅스 리워드 회원이 되신 후, <br class="pc-br"><br class="mobile-br">첫 구매를 하시면 무료 음료쿠폰을 드립니다!
								</p>
							</div>
							<div class="btn_egift">
								<a href="/msr/sceGift/gift_step1.do">e-Gift Card 선물하기</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- //메인 스타벅스 리워드 리뉴얼 -->
			
			<div class="line_msr" style="display:none;">
				<div class="line_msr_wrap msr_new"><!-- 20200120 class="msr_new" 추가 -->
					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<p class="level_star_bg en">0</p>
						<div class="msr_info_area">
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en">Gold Level</strong><br><strong>무료음료</strong> 획득 별까지<br><strong>3개</strong> 남았습니다. --></p>
							<p class="btn_reward_level"><a href="/my/reward.do" title="마이 리워드" class="btn_reward">리워드 및 혜택</a></p>
						</div>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- MSR 회원 end -->
					<!-- 일반회원 -->
					<div class="msr_lead" style="display:none;">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<a href="msr/msreward/level_benefit.do" title="회원 등급별 혜택">
						<p class="icon_msr_cup"></p>
						<div class="msr_info_area">
							<p class="msr_lead_txt">
								<span class="user_greet_txt"><strong><!-- 스벅매니아 --></strong>님, 안녕하세요!</span>
								<span class="userNextStarTxt"><em>혜택에 편리함까지 더한</em> 스타벅스 리워드를 즐겨보세요.</span>
							</p>
						</div>
						</a>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line" aria-hidden="true"></span><!-- 접근성_20171106 aria 추가 -->

					<!-- 카드인포 -->
					<!-- MSR 회원 -->
					<div class="msr_card_info w_card_pic">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index.do';" style="cursor:pointer;" tabindex="0"><!-- 접근성_20171106 tabindex 추가 -->
							<img alt="카드이름">
						</p><!-- 접근성_20171106 tabindex 추가 -->
						<div class="msr_info_area msr_card_txt_area">
							<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
							<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
						</div>
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<div class="msr_card_zone m_card_pic">
						<div class="mycard_area1">
							<img alt="카드이름" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';" />
						</div>

						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
					</div>
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<!-- s::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
						<a href="/my/mycard_info_input.do"><!-- 접근성_20171106 링크 href 변경 -->
						<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input.do';"><img alt="카드등록 아이콘" src="https://image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
						<!-- 등록된 카드가 없는 경우 -->
						<p class="sb_card_regi_txt"><strong>스타벅스 카드 등록</strong><br>등록된 카드가 없습니다.<br>새로운 카드를 등록하세요.</p>
						</a>
						<a class="btn_main_card_regi" href="/my/mycard_info_input.do" required="login">카드등록</a>
						<!-- 등록된 카드가 없는 경우 end -->
						<!-- e::20200120 페이스북 프로필 기능 삭제 관련 메인 수정 -->
					</div>
					<!-- 일반회원 end -->
					<!-- 카드인포 end -->
				</div>
			</div>
			

		
		
			
				<!-- s: 시즌 프로모션 배너(230209) -->
<style type="text/css">
   #main-bean_wrap {background: url('https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_autumn_promotion_bg.jpg') center/cover no-repeat; height: 573px; position: relative;}

    /*
    #main-bean_wrap:before, #main-bean_wrap:after {position: absolute; bottom: 0; display: block; background-repeat: no-repeat; content: '';}
    #main-bean_wrap:before {bottom: 0; left: 0; width: 234px; height: 234px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2022/m_2022_christmas_bean_bg_star_left.png'); background-position: left bottom;}
    #main-bean_wrap:after {bottom: 0; right: 0; width: 234px; height: 234px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2022/m_2022_christmas_bean_bg_star_right.png'); background-position: right bottom;}
    */

    .main-bean_inner {max-width: 1124px;}
    .bean_img_box {z-index: 9; top: 50%; transform: translateY(-50%); left: 10.9%; max-width: auto; width: 45%;}
    .bean_txt_box {z-index: 9; top: 32.8%; right: 8.4%; max-width: 339px; /*width: 37.63%;*/}

    .btn_bean_detail {margin-top: 39px;}
    .btn_bean_detail a {color: #155c34; border: 2px solid #155c34; transition: background-color .7s, color .7s; -webkit-transition: background-color .7s, color .7s;}
    .btn_bean_detail a:hover {background-color: #155c34; color: #fff;}

    @media all and (max-width:1700px) {
    #main-bean_wrap:before,
    #main-bean_wrap:after {background-size: 86%}

    .main-bean_inner {max-width: 1124px;}
    }

    @media all and (max-width:1500px) {
    #main-bean_wrap {position: relative; height: 500px;}
    #main-bean_wrap:before,
    #main-bean_wrap:after {background-size: 72%}

    .bean_img_box {z-index: 9; top: 50%; transform:translateY(-50%); left: 14% !important; width: 28%;}
    .bean_txt_box {z-index: 9; top: 35%; right: 15%; width: 30%;}
    }

    @media all and (max-width:1200px) {
    #main-bean_wrap {height: 43vw;}
    #main-bean_wrap:before,
    #main-bean_wrap:after {background-size: 65%}
    .bean_txt_box {right: 14.7%; top: 34%; width: 32%;}
    }

    @media all and (max-width:1100px) {
    .bean_txt_box {right: 18.7%; top: 33%; width: 30%;}
    #main-bean_wrap:before,
    #main-bean_wrap:after {background-size: 60%;}
    }

    @media all and (max-width:960px) {
    #main-bean_wrap {background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_autumn_promotion_bg_1.jpg'); height: 165vw;}
    #main-bean_wrap:before,
    #main-bean_wrap:after {display: none;}

    .bean_img_box {z-index: 10; top: 3% !important; left: 55% !important; width: 86%; /*max-width: 520px;*/ transform: translate(-50%, 0);}
    .bean_txt_box {z-index: 10; top: 57%; right: 50% !important; bottom: 17.5%; max-width: 410px; width: 48%; transform: translate(50%, 0) !important;}
    .bean_img_box img, .bean_txt_box img {width: 100%;}

    .btn_bean_detail {margin: 20% auto 0; transform: translateY(20px); width:81%; height:auto;}
    .btn_bean_detail a {line-height:10vw; font-size:22px; font-weight:bold; border-radius: 3px;}

    .m-bean, .m-bean-txt {display: block;}
    .pc-bean, .pc-bean-txt {display: none;}
    }

    @media all and (max-width:480px) {
    .bean_txt_box {transform: translate(-1.7%, -20%)}
    .btn_bean_detail a {font-size:16px;}
    }
</style>
<section id="main-bean_wrap">
<div class="main-bean_inner">
<div class="bean_img_box" style="opacity: 1; left:9%">
    <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_autumn_promotion_img.png" alt="애니버서리 블렌드 250g" class="pc-bean">
    <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_autumn_promotion_img.png" alt="애니버서리 블렌드 250g" class="m-bean">
</div>

<div class="bean_txt_box" style="opacity: 1; right:12%;">
    <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_autumn_promotion_txt_2.png" alt="가을의 시작을 함께할 애니버서리 블렌드 묵직한 바디감과 스파이시한 끝맛이 매력적인 애니버서리 블렌드를 만나보세요" class="pc-bean-txt">
    <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_m_autumn_promotion_txt_2.png" alt="가을의 시작을 함께할 애니버서리 블렌드 묵직한 바디감과 스파이시한 끝맛이 매력적인 애니버서리 블렌드를 만나보세요" class="m-bean-txt">
    <div class="btn_bean_detail">
        <a href="https://www.starbucks.co.kr/whats_new/newsView.do?seq=5093">자세히 보기</a>
    </div>
    </div>
</div>
</section>
<!-- e: 시즌 프로모션 배너(230209) -->
			
			
		
		

		
		
			
				<!-- s::메인 리저브 배너(20230127) -->
<style type="text/css">
    .reserve_wrap {position:relative; height:400px; background:url("https://image.istarbucks.co.kr/upload/common/img/main/2023/230811_pc_reserve_bg.jpg") no-repeat center top; background-size:cover; overflow:hidden}
    
    .reserve_inner {position:relative; width:100%; height:100%; margin:0 auto;}
    
    .reserve_title img,
    .reserve_visual img {width:auto;}
    
    .reserve_title {position:relative; z-index:10; padding-top:68px; max-width:1080px; width:100%; margin-left:auto; margin-right:auto; box-sizing:border-box;}
    .reserve_title img {transform:translateX(161px);}
    
    .reserve_visual {display:block; position:absolute; right:0%; bottom:0; opacity:0;}
    .reserve_visual .reserve_visual-pc {max-width:none;}

    /*
    .reserve_visual::before {content: url("https://image.istarbucks.co.kr/upload/common/img/main/2022/221220_pc_reserve_left_bg.png"); position: absolute; left: 50px; bottom: -1%;}
    .reserve_visual::after {content: url("https://image.istarbucks.co.kr/upload/common/img/main/2022/221220_pc_resserve_right_bg.png"); position: absolute; right: 0; bottom: -1%;}
    */
    
    .reserve_detail-btn_wrap {position:relative; z-index:10; max-width:1080px; margin-top:30px; margin-right:auto; margin-left:auto; padding-left:254px; box-sizing:border-box;} 
    .reserve_detail-btn a {display:block; width:100%; height:100%; color: #b68341; font-size:14px; line-height:36px; text-align:center; border:2px solid #b68341; border-radius:5px; box-sizing:border-box; transition:background-color .7s, color .7s, border-color .7s; -webkit-transition:background-color .7s, color .7s, border-color .7s}
    .reserve_detail-btn a:hover {color:#000; background-color:#b68341;}

    .reserve_magazine_wrap .reserve_visual:before, .reserve_magazine_wrap .reserve_visual:after {display:none;}
    .reserve_magazine_wrap .reserve_detail-btn_wrap {width:auto;padding-left:0;}
    @media screen and (min-width:2000px){
        .reserve_visual {right:0; left:0; text-align:center;}
    }
    @media screen and (max-width:1900px){
        .reserve_inner:before {top:12px; width:180px; height:109px; background-size:cover;}
        .reserve_visual {right:-4%;}
    }
    @media screen and (max-width:1800px){
        .reserve_visual {right:-8%;}
    }
    @media screen and (max-width:1700px){
        .reserve_visual {right:-12%;}
    }
    @media screen and (max-width:1600px){
        .reserve_visual {right:-16%;}
    }
    @media screen and (max-width:1500px){
        .reserve_visual {right:-19%;}
    }
    @media screen and (max-width:1400px){
        .reserve_visual {right:-24%;}
    }
    @media screen and (max-width:1300px){
        .reserve_visual {right:-33%;}
    }
    @media screen and (max-width:1200px){
        .reserve_visual {right:-44%;}
    }
    @media screen and (max-width:1120px){
        .reserve_wrap {height:357px;}

        .reserve_inner:before {display:none;}

        .reserve_title {max-width:none; /*width:42%;*/ margin-right:0; margin-left:0; padding-top:50px; padding-left:17.5%;}
        .reserve_visual {right:-42%; bottom:-6%;}
        .reserve_title img {transform:none;}

        .reserve_detail-btn_wrap {max-width:none; width:40%; margin-left:0; padding-left:25.5%;}
    }
    @media screen and (max-width:1050px){
        .reserve_visual {right:-42%;}
    }
    @media screen and (max-width:980px){
        .reserve_visual {right:-50%;}
    }
    @media screen and (max-width:930px){
        .reserve_wrap {height:100%;}
        .reserve_wrap:after {display:none;}
        
        .reserve_title {display:none}
        
        .reserve_visual {bottom:0; right:auto; width:100%;}          
        .reserve_visual img {max-width:none; width:100%;}

        .reserve_visual::before {display: none;}
        .reserve_visual::after {display: none;}
        
        .reserve_detail-btn_wrap {position:static; width:auto; margin-top:0; padding-left:0;}
        .reserve_detail-btn {position:absolute; z-index:10; width: 35.8%; height: 6.2%; left:32%; bottom: 9.5%;}
        .reserve_detail-btn a {font-size:22px; line-height:10vw;}
    }
    @media screen and (max-width:480px){
        .reserve_detail-btn a {font-size: 13px;} 
    }
</style>
<section class="reserve_wrap">
    <div class="reserve_inner">
        <div class="reserve_title">
            <img src="https://image.istarbucks.co.kr/img/event/2023/230811_pc_reserve_logo.png" alt="SUN-DRIED BRAZIL" class="reserve_visual-pc">
        </div>
        
        <div class="reserve_visual" style="opacity: 1;">
            <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/230811_pc_reserve_coffee_bg.png" alt="" class="reserve_visual-pc">
            <img src="https://image.istarbucks.co.kr/upload/common/img/main/2023/230811_m_reserve_bg.jpg" alt="" class="reserve_visual-m">
        </div>
        
        <div class="reserve_detail-btn_wrap">					
            <div class="reserve_detail-btn">
                <a href="https://www.starbucks.co.kr/whats_new/newsView.do?seq=5061">자세히 보기</a>
            </div>
        </div>
    </div>
</section>
<!-- //e::메인 리저브 배너(20230127) -->
			
			
		
		


		
		
			
				<!-- s: Pick Your Favorite(230221) -->
<style type="text/css">
  #favWrap {background:url("https://image.istarbucks.co.kr/upload/common/img/main/2023/230921_1_pc_pick_bg.jpg") center center fixed no-repeat #45434c; background-size: auto 87%; height:800px; padding:0; position:relative; background-position: bottom;}
  .fav_img {top: 100px; right: -163px; width: 912px; height: 575px; background-image: url('https://image.istarbucks.co.kr/upload/common/img/main/2023/2023_disney2_pick_img.png');}

  @media screen and (max-width:1400px) {
  .fav_img {top: 50%; transform:translateY(-50%); right: 60px; width: 720px; height: 475px;}
  }

  @media screen and (max-width:1100px) {
  .fav_img {top: 50%; transform:translateY(-50%); right: 160px; width: 570px; height: 380px;}
  }

  @media screen and (max-width:960px) {
  #favWrap {background: url("https://image.istarbucks.co.kr/upload/common/img/main/2023/230921_m_pick_bg.jpg") center -6px no-repeat #16151b; background-size: 100% auto; height: 232vw; padding: 0; position: relative; width: 100%;}
  .fav_img {position: static; top: auto; right: auto; margin: 250px auto 0; transform:0; transform: translateY(0);}
  .fav_prod_txt01 {top:74% !important;}
  .fav_prod_txt02 {top:79% !important;}
  .btn_fav_prod {top:88% !important;}
  }

  @media screen and (max-width:640px) {
  #favWrap {background-position: center -6px; background-size: cover;}
  .fav_img {width: 460px; height: 314px; margin:150px auto 0;}
  .btn_fav_prod {width: 115px; height: 34px; line-height: 32px; margin-top: 0;}
  .btn_fav_prod a {font-size: 13px; line-height: 30px;}
  .fav_prod_txt01 {top:70% !important;}
  .fav_prod_txt02 {top:77% !important;}
  .btn_fav_prod {top:89% !important;}
  }

  @media screen and (max-width:480px) {
  #favWrap {background: url("https://image.istarbucks.co.kr/upload/common/img/main/2023/230921_m_pick_bg.jpg") center -3px no-repeat #16151b; background-size: cover; padding: 0; position: relative; width: 100%;}
  .fav_img {width: 320px; height: 264px; margin: 120px auto 0;}
  }
  @media screen and (max-width:380px) {
    .fav_img {margin:80px auto 0;}
  }  
</style>
<section id="favWrap" class="winter_fav_bg">
  <div class="wrap_inner">
  <div class="fav_prod_txt01">PICK YOUR FAVORITE</div>
  <div class="fav_prod_txt02">다양한 메뉴를 스타벅스에서 즐겨보세요. 스타벅스만의 특별함을 경험할 수 있는 최상의 선택 음료, 스타벅스 커피와 완벽한 어울림을 자랑하는 푸드, 다양한 시도와 디자인으로 가치를 더하는 상품, 소중한 사람에게 마음을 전하는 가장 좋은 방법 스타벅스 카드</div>
  <div class="fav_img"></div>
  <div class="btn_fav_prod"><a href="/menu/index.do">자세히 보기</a></div>
  </div>
</section>
<!-- e: Pick Your Favorite(230221) -->
			
			
		

		


			<!-- 메뉴 -->
			<section id="menuWrap">
				<div class="wrap_inner">
					<div class="menu_txt01"></div>
					<div class="menu_txt02"></div>
					<div class="menu_btn"><a href="/menu/index.do">자세히 보기</a></div>
					<div class="menu_img01"></div>
				</div>
			</section>
			<!-- 메뉴 end -->
			
			<!-- 20200619 수정 -->
			<!-- <section class="reserve3Wrap">
				<div class="reserve3_pc">
					<div class="reserve_left">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_pc.png" alt="" />
					</div>
					<div class="reserve_right">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_pc.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="reserve3_mobile">
					<div class="reserve_top">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_visual_mobile.png" alt="" />
					</div>
					<div class="reserve_bottom">
						<img src="https://image.istarbucks.co.kr/upload/common/img/main/2020/reserve_text_mobile.png" class="reserve_img-txt" alt="리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요" />
					</div>
				</div>
				
				<div class="look-detail_btn">
					<a href="/coffee/reserve_magazine_list.do">EXPLORE OUR STORY</a>
				</div>
			</section> 20210928 삭제 -->
			<!-- //20200619 수정 -->
			<!-- 20210928 추가 -->
			<section class="reserve_magazine_wrap">
                <div class="reserve_inner">
                    <div class="reserve_title">
                        <img src="https://image.istarbucks.co.kr/upload/common/img/etc/reserve_text_pc.png" alt="리저브 매거진에서 일상 속 특별함을 만나보세요." class="reserve_visual-pc"> <!-- 220120 수정 -->
                    </div>
                    
                    <div class="reserve_visual">
                        <img src="https://image.istarbucks.co.kr/upload/common/img/etc/reserve_visual_pc.png" alt="" class="reserve_visual-pc"> <!-- 220120 수정 -->
                        <img src="https://image.istarbucks.co.kr/upload/common/img/etc/reserve_visual_m.jpg" alt="" class="reserve_visual-m"> <!-- 220120 수정 -->
                    </div>
                    
                    <div class="reserve_detail-btn_wrap">					
                        <div class="reserve_detail-btn">
                            <a href="/coffee/reserve_magazine_list.do">자세히 보기</a>
                        </div>
                    </div>
                </div>
            </section>
			<!-- 20210928 추가 -->
			<!-- 리저브매장 end -->

			<!-- 매장 -->
			<section id="storeWrap">
				<div class="wrap_inner">
					<div class="store_exp_img01"></div>
					<div class="store_exp_img02"></div>
					<div class="store_exp_img03"></div>
					<div class="store_exp_img04"></div>
					<div class="store_txt01">스타벅스를 가까이에서 경험해보세요. 고객님과 가장 가까이 있는 매장을 찾아보세요!</div>
					<div class="store_txt02">차별화된 커피 경험을 누릴 수 있는 리저브 매장, 다양한 방법으로 편리하게 즐길 수 있는 드라이브 스루 매장, 함께해서 더 따뜻할수 있는 지역사회 소통 공간 커뮤니티 매장</div>
					<div class="store_btn"><a href="/store/store_map.do">매장 찾기</a></div>
				</div>
			</section>
			<!-- 매장 end -->
			</div><!-- // 접근성_20171201 container 추가 -->
			
			