package com.care.coffee.shop_admin;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IAdminShopMapper {
	int shop_cate_add_proc(AdminShop_cateDTO acdto);

	ArrayList<AdminShop_cateDTO> shop_cate_list();
	
	int shop_add_proc(AdminShopDTO adto);

	ArrayList<AdminShopDTO> shop_list();

	AdminShopDTO shop_info_get(int no);

	int shop_update_proc(AdminShopDTO adto);

	void shop_delete_proc(int no);

	void shop_cate_delete_proc(int num);

	
}
