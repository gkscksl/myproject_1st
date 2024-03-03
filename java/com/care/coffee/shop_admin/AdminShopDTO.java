package com.care.coffee.shop_admin;

public class AdminShopDTO {
/*
create table shop (no number,num number not null,
name varchar2(50) not null,tel varchar2(15) not null,
location varchar2(200) not null,worktime varchar2(100) null, PRIMARY KEY (no));
 */
	private int no;
	private int cate;
	private String name;
	private String tel;
	private String location;
	private String worktime;
	private String type;
	private double lat;
	private double lng;
	
	
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCate() {
		return cate;
	}
	public void setCate(int cate) {
		this.cate = cate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getWorktime() {
		return worktime;
	}
	public void setWorktime(String worktime) {
		this.worktime = worktime;
	}
	
}
