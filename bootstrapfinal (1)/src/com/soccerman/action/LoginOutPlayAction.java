package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginOutPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.bizpoll";
		HttpSession session = request.getSession();
		
		if(session != null) {
			//session을 초기화 => 로그인 정보 삭제 
			session.invalidate();
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		//forward.setRedirect(false);
		forward.setRedirect(true);
		//forward일때는 로그아웃 후 뒤로가기 했을 때 로그인정보가 그대로 남아있음
		//sendRedirect일 때는 로그아웃 후 뒤로가기 했을 때 로그인정보가 사라짐!!
		
		return forward;
	}
	
}
