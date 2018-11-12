package com.soccerman.dto;

import java.util.Date;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private int p_price;
	private String p_purchasecnt;
	private String p_goodcnt;
	private String p_img;
	private Date p_indate;
	
	
	
	public ProductDTO(String p_code, String p_name, int p_price, String p_purchasecnt, String p_goodcnt, String p_img,
			Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_purchasecnt = p_purchasecnt;
		this.p_goodcnt = p_goodcnt;
		this.p_img = p_img;
		this.p_indate = p_indate;
	}

	public ProductDTO() {
		super();
	}
	
	public ProductDTO(String p_code, String p_name, int p_price, String p_img) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
	}
	public ProductDTO(String p_code, String p_name, int p_price, String p_img, Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
		this.p_indate = p_indate;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public Date getP_indate() {
		return p_indate;
	}
	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}
	
	public String getP_purchasecnt() {
		return p_purchasecnt;
	}

	public void setP_purchasecnt(String p_purchasecnt) {
		this.p_purchasecnt = p_purchasecnt;
	}

	public String getP_goodcnt() {
		return p_goodcnt;
	}

	public void setP_goodcnt(String p_goodcnt) {
		this.p_goodcnt = p_goodcnt;
	}

	@Override
	public String toString() {
		return "ProductDTO [p_code=" + p_code + ", p_name=" + p_name + ", p_price=" + p_price + ", p_purchasecnt="
				+ p_purchasecnt + ", p_goodcnt=" + p_goodcnt + ", p_img=" + p_img + ", p_indate=" + p_indate + "]";
	}
	
	
	
	
}
