package com.soccerman.action;

public class ActionForward {
	
	// View page(결과값을 어디로 전송할지)
	private String path;
	
	// 페이지 이동하는 방법(sendRedirect, Forward)
	// true -> sendRedirect, false -> forward
	private boolean isRedirect;   // false

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {  // false
		this.isRedirect = isRedirect;
	}
	



}
