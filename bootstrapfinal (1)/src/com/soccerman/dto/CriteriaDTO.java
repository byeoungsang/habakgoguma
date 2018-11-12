package com.soccerman.dto;

public class CriteriaDTO {
	private int page;
	private int perPageNum;
	private String keyword;
	private String flag;
	
	public CriteriaDTO() {
		this.page=1;
		this.perPageNum = 10;
		
				
	}
	public CriteriaDTO(int page, int perPageNum, String keyword) {
		this.page= page;
		this.perPageNum = perPageNum;
		this.keyword = keyword;
				
	}
	public int getPageStart() {
		return (((this.page-1)*perPageNum)+1);
		
	}
	public int getPerpageNum() {
		return this.page * perPageNum;
		
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page<=0) {
			this.page =1;
			return;
		}
		this.page=page;
	}
		
		
	
	public int getPerPageNum() {
		return this.page* perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	
	
	
	
}
