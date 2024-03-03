package com.care.coffee.shop_admin;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class AdminShopService {
	@Autowired IAdminShopMapper amapper;
	
	public String shop_cate_add_proc(AdminShop_cateDTO acdto) {
		int result = amapper.shop_cate_add_proc(acdto);
		
		if(result != 0) {
			return "매장 카테고리 등록 성공";
		}
		
		return "매장 카테고리 등록 실패";
	}
	
	public void shop_cate_list(Model model) {
		ArrayList<AdminShop_cateDTO> cates = amapper.shop_cate_list();
		
		model.addAttribute("cates", cates);
	}
	

	public void shop_cate_delete_proc(int num) {
		amapper.shop_cate_delete_proc(num);
		
	}
	
	public String shop_add_proc(AdminShopDTO adto, Model model,int cate_num) {
		adto.setCate(cate_num);
		int result = amapper.shop_add_proc(adto);
		
		if(result != 0) {
			return "매장 등록 성공";
		}
		
		return "매장 등록 실패";
	}

	public ArrayList<AdminShopDTO> shop_list() {
		ArrayList<AdminShopDTO> list = amapper.shop_list();
		
		return list;
	}

	public void shop_info_get(int no, Model model) {
		AdminShopDTO shop = amapper.shop_info_get(no);
		
		model.addAttribute("shop", shop);
	}

	public String shop_update_proc(AdminShopDTO adto,int cate_num, Model model) {
		int res = amapper.shop_update_proc(adto);
		
		if(res == 0) {
			return "매장 수정 실패";
		}
		return "매장 수정 성공";
	}
	
	public void shop_delete_proc(int no) {
		amapper.shop_delete_proc(no);
		
	}


}
