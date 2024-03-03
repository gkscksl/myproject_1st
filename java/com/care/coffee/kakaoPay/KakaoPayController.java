package com.care.coffee.kakaoPay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.care.coffee.menu.CartDTO;

import jakarta.servlet.http.HttpSession;

@Controller
public class KakaoPayController {
	@Autowired private KakaoPayService kakaoPayService;  
	@Autowired private HttpSession session;
	
	//카카오페이 결제요청(결제하기 버튼 눌렀을 때)
	@RequestMapping("/pay/middle")
	public @ResponseBody KakaoReadyDTO payReady(@RequestParam(name = "total_amount") int totalAmount, CartDTO order, Model model) {
																									// ^이거에 장바구니 연결
		//상품이름 필요
		// 카카오 결제 준비하기	- 결제요청 service 실행.
		KakaoReadyDTO readyResponse = kakaoPayService.kakaoPayReady(totalAmount);
		
		// 요청처리후 받아온 결재고유 번호(tid)를 세션에 저장
		session.setAttribute("tid", readyResponse.getTid());
		
		//kakaoPayService.tidSetting(readyResponse.getTid());
		// Order정보를 모델에 저장
		session.setAttribute("order",order);
		System.out.println(readyResponse.getTid());
		return readyResponse; // 클라이언트에 보냄.(tid,next_redirect_pc_url이 담겨있음.)
	}
	
	//카카오페이 결제 승인 요청(결제하기 버튼을 누른 후 정상적으로 리턴을 받았을 때 == pg_Token을 받았을 경우)
	@GetMapping("/pay/completed")
	public String payCompleted(@RequestParam("pg_token") String pgToken, @SessionAttribute("tid") String tid,
			@ModelAttribute("order") KakaoApproveDTO info,  Model model) {
									//^ 장바구니 연결
		
		System.out.println("GPT의 힘인가..?" + session.getAttribute("tid"));
		/*if(model.getAttribute(tid)== null) {
			tid = kakaoPayService.givemeTid();
		}*/
		
		
		// 카카오 결재 요청하기
		KakaoApproveDTO approveResponse = kakaoPayService.payApprove(tid, pgToken);	
		
		info = kakaoPayService.payResult(tid);
		session.setAttribute("info", info);
		
		/*	예시글을 보면 결과로 받은 값을 따로 클래스로 만들어두고 저장해뒀음.
		// 5. payment 저장
		//	orderNo, payMathod, 주문명.
		// - 카카오 페이로 넘겨받은 결재정보값을 저장.
		Payment payment = Payment.builder() 
				.paymentClassName(approveResponse.getItem_name())
				.payMathod(approveResponse.getPayment_method_type())
				.payCode(tid)
				.build();
		
		orderService.saveOrder(order,payment);
		*/
		return "redirect:/pay/payResult";
	}
	
	@RequestMapping("/pay/pay_test")
	public String pay_test() {
		return "pay/pay_test";
	}
	
	
	@RequestMapping("/pay/payResult")
	public String payResult() {
		return "pay/payResult";
	}
	
	
	//결제 성공시 이동
	@RequestMapping("/pay/success")
	public String pay_success() {
		return "pay/success";
	}

	//결제 실패시 이동
	@RequestMapping("/pay/fault")
	public String pay_fault() {
		return "pay/fault";
	}
	
	//결제 취소시 이동
	@RequestMapping("/pay/cancel")
	public String pay_cancle() {
		return "pay/cancel";
	}
	
}
