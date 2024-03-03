package com.care.coffee.kakaoPay;

import java.io.Console;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import jakarta.servlet.http.HttpSession;

@Service
public class KakaoPayService {
	// ************  장바구니와 연결 필요 ************
	
	static final String admin_Key = "d84d7f7e9680baa9351fe1f7500ab21d";		//카카오페이api 접근을 위한 admin키값
	private KakaoReadyDTO kakaoReadyDTO;
	@Autowired private HttpSession session;
	
	//결제요청을 위해 카카오api에 접근하기 위한 부분
	public KakaoReadyDTO kakaoPayReady(int totalAmount) {
		
		//세션으로 유저의 로그인 확인, 장바구니
		
		//카카오에게 결제 요청할 때 필요한 필수항목들.
		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
		
		parameters.add("cid", "TC0ONETIME");		//"가맹점 코드 == 테스트를 위한 코드. 이 값 고정"
        parameters.add("partner_order_id", "1");	//"가맹점 주문 번호"
        parameters.add("partner_user_id", (String)session.getAttribute("userId"));	//"가맹점 회원 ID"
        parameters.add("item_name", "스타벅스 결제");			//"상품명"
        parameters.add("quantity", "1");			//"주문 수량"
        parameters.add("total_amount", "4500");		//"총 금액"
        parameters.add("tax_free_amount", "0");		//"상품 비과세 금액"
        parameters.add("approval_url", "http://localhost/pay/completed"); // 성공 시 redirect url
        parameters.add("cancel_url", "http://localhost/pay/cancel"); 	// 취소 시 redirect url
        parameters.add("fail_url", "http://localhost/pay/fail"); 		// 실패 시 redirect url
		
        /*KakaoApproveDTO kakaoApproveDTO;
        kakaoApproveDTO.setAid(aid);*/
        
        // 파라미터, 헤더
        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(parameters, this.getHeaders());
        
        // 외부에 보낼 url
        RestTemplate restTemplate = new RestTemplate();
        kakaoReadyDTO = restTemplate.postForObject("https://kapi.kakao.com/v1/payment/ready", requestEntity, KakaoReadyDTO.class);
        //System.out.println("payReady에서 : "+kakaoReadyDTO.getTid());
        
        
        
        return kakaoReadyDTO;
	}
	
	
	//결제 승인 요청
	public KakaoApproveDTO payApprove(String tid, String pgToken) {
		//세션을 통해 유저의 로그인 확인, 장바구니
		//고객의 주문을 관리하기 위한 결제 고유 번호 (tid를 만들어야함) 필요. 카카오페이측에서 요구(String 100자까지 가능)
		
		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		parameters.add("cid", "TC0ONETIME");
		parameters.add("tid", tid);						//결제 고유 번호
		parameters.add("partner_order_id", "1"); //가맹점의 주문 번호
		parameters.add("partner_user_id", (String)session.getAttribute("userId"));
		parameters.add("pg_token", pgToken);			//고객이 결제수단 선택 후 approval_url로 redirection해줄 때 pg_token을 query string으로 전달
		
		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(parameters, this.getHeaders());
		
		RestTemplate template = new RestTemplate();
		String url = "https://kapi.kakao.com/v1/payment/approve";
        // 보낼 외부 url, 요청 메시지(header,parameter), 처리후 값을 받아올 클래스. 
		KakaoApproveDTO approveResponse = template.postForObject(url, requestEntity, KakaoApproveDTO.class);
		System.out.println("payApprove에서 : "+kakaoReadyDTO.getTid());
		return approveResponse;
	}
	
	public KakaoApproveDTO payResult(String tid) {
		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		parameters.add("cid", "TC0ONETIME");
		parameters.add("tid", tid); // 결제 고유 번호

		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(parameters, this.getHeaders());

		RestTemplate template = new RestTemplate();
		String url = "https://kapi.kakao.com/v1/payment/order";
		// 보낼 외부 url, 요청 메시지(header,parameter), 처리후 값을 받아올 클래스.
		System.out.println("payResult에서 : "+kakaoReadyDTO.getTid());
		KakaoApproveDTO info = template.postForObject(url, requestEntity, KakaoApproveDTO.class);

		return info;
	}
	
	
	//header() 세팅
	private HttpHeaders getHeaders() {
        HttpHeaders httpHeaders = new HttpHeaders();

        String auth = "KakaoAK " + admin_Key;

        httpHeaders.set("Authorization", auth);
        httpHeaders.set("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        return httpHeaders;
	}
	
}
