package com.soccerman.dto;

public class pageMakerDTO {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 10;  // 화면에서 보여지는 블럭 수
	
	
	private CriteriaDTO criDto;


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	public void calcData() {
		endPage =(int)Math.ceil(criDto.getPage()/(double)displayPageNum)*displayPageNum;
		startPage = (endPage-displayPageNum)+1;
		
		int tempEndPage = (int)(Math.ceil(totalCount/(double)(criDto.getPerPageNum()/criDto.getPage())));
		
				if(endPage > tempEndPage) {
					endPage = tempEndPage;
				}
		prev = startPage == 1?false:true;
		next = (endPage*(criDto.getPerPageNum()/criDto.getPage()))>=totalCount?false:true;
		
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public boolean isPrev() {
		return prev;
	}


	public void setPrev(boolean prev) {
		this.prev = prev;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}


	public int getDisplayPageNum() {
		return displayPageNum;
	}


	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}


	public CriteriaDTO getCriDto() {
		return criDto;
	}


	public void setCriDto(CriteriaDTO criDto) {
		this.criDto = criDto;
	}


	@Override
	public String toString() {
		return "pageMakerDTO [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", criDto=" + criDto
				+ "]";
	}
	
	
	
	
	
}
