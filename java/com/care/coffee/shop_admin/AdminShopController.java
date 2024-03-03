package com.care.coffee.shop_admin;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class AdminShopController {
	//http://localhost/shop_admin_index
	@Autowired AdminShopService aservice;
	@Autowired IAdminShopMapper amapper;
	
	@RequestMapping("/shop_admin_index")
	public String shop_admin_index() {
		return "admin/shop_admin_index";
	}
	
	@GetMapping("shop_cate_add")	//카테고리 추가
	public String shop_cate_add() {
		return "admin/shop_cate_add";
	}
	
	@PostMapping("shop_cate_add")
	public String shop_cate_add(AdminShop_cateDTO acdto, Model model) {
		String msg = aservice.shop_cate_add_proc(acdto);
		
		if(msg == "매장 카테고리 등록 성공") {
			return "redirect:shop_admin_index";
		}
		
		model.addAttribute("msg", msg);
		return "admin/shop_cate_add";
	}
	
	@RequestMapping("shop_cate_list")	//카테고리 리스트확인
	public String shop_cate_list(Model model) {
		aservice.shop_cate_list(model);
		
		return "admin/shop_cate_list";
	}
	
	@RequestMapping("shop_cate_delete_proc")
	public String shop_cate_delete_proc(int num) {
		aservice.shop_cate_delete_proc(num);
		
		return "redirect:shop_admin_index";
	}
	
	@GetMapping("shop_add")	//매장 추가
	public String shop_add(Model model) {
		ArrayList<AdminShop_cateDTO> cates = amapper.shop_cate_list();
		model.addAttribute("cates", cates);
		
		return "admin/shop_add";
	}
	
/*	@ResponseBody
	@PostMapping(value="shop_add", produces ="text/plain; charset=utf-8")
	public List<AdminShop_cateDTO> shop_addPost(@RequestBody AdminShop_cateDTO cates) {
		return "admin/shop_add";
	}*/
	
	@PostMapping("shop_add")
	public String shop_add(AdminShopDTO Adto, Model model, RedirectAttributes ra,int cate_num) {
		
		String msg = aservice.shop_add_proc(Adto, model, cate_num);
		
		if(msg == "매장 등록 성공") {
			return "redirect:shop_admin_index";
		}
		model.addAttribute("msg", msg);
		return "admin/shop_add";
	}
	
	@RequestMapping("shop_list")	//매장 목록 확인
	public String shop_list(Model model) {
		ArrayList<AdminShopDTO> shops = aservice.shop_list();
		model.addAttribute("shops", shops);
		return "admin/shop_list";
	}
	
	@RequestMapping("shop_update")
	public String shop_update(int no, Model model) {
		ArrayList<AdminShop_cateDTO> cates = amapper.shop_cate_list();
		model.addAttribute("cates", cates);
		
		aservice.shop_info_get(no, model);
		
		return "admin/shop_update";
	}
	
	@PostMapping("shop_update_proc")
	public String shop_update_proc(AdminShopDTO adto, int cate_num, Model model) {
		String result = aservice.shop_update_proc(adto, cate_num, model);
		
		if(result == "매장 수정 성공") {
			return "redirect:shop_list";
		}
		
		return "redirect:shop_update?no="+adto.getNo();
	}
	
	/*@RequestMapping("shop_delete")
	public String shop_delete(int no) {
		String check = aservice.shop_delete_check(no);
		if(check == "삭제") {
			return "admin/shop_delete_proc";			
		}
		
		return "admin/shop_list";
	}*/
	@RequestMapping("shop_delete_proc")
	public String shop_delete_proc(int no) {
		aservice.shop_delete_proc(no);
		
		return "redirect:shop_admin_index";
	}
	
	//길찾기, 매장 보여주기는 네이버와 연결되어서 작동. 관리자가 건들 수 있으려나...??
	
}
