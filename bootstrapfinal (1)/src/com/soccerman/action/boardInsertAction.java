package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.soccerman.dao.BoardDAO;
import com.soccerman.dto.BoardDTO;

public class boardInsertAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	String url ="";
		
		HttpSession session = request.getSession();//session값 취득
		
		if(session.getAttribute("loginUser")==null) {// 로그인 no
			System.out.println("로그인 하세요");
			url ="boardwrite.jsp";
		}else {//로그인 on
			System.out.println("등록 가자");
			url="boardwrite.jsp";
		}
		System.out.println(url);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}