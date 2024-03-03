package com.care.coffee.shop_admin;

public class AdminShop_cateDTO {
	/*
	 * create table shop_cate(num number,
	 * type varchar2(100) not null,
	 * primary key (num));
	 */
	
	private int num;
	private String type;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
