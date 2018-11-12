package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class boardWriteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUser") == null) {
			System.out.println("로그인하세요");
			url = "login.bizpoll";
		} else {
			System.out.println("등록 가자");
			url ="boardwrite.jsp";
		}
			System.out.println(url);
			
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		// 여기까지는 써놓고 시작^^
	}
	

}