package com.soccerman.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soccerman.dao.BoardDAO;



public class BoardViewcntAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bno = request.getParameter("bno");
		
		System.out.println(bno);
		BoardDAO bDao = BoardDAO.getInstance();
		
		Date today = new Date();
		request.setAttribute("today", today);
		
		//조회수 1증가
		//Session을 활용한 조회수 증가 방지
		HttpSession session = request.getSession();
		
		bDao.viewCnt(bno, session);
		
		String url = "boardDetail.bizpoll?bno"+bno;;
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}