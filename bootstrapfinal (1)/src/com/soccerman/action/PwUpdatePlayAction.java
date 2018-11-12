package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soccerman.dao.MemberDAO;

public class PwUpdatePlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="";
		
		// 변경할 비밀번호
		String id = request.getParameter("id");
		String pw = request.getParameter("pw2");
		System.out.println("변경할 ID: " + id);
		System.out.println("변경할 PW: " + pw);
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updatePw(id, pw);
		System.out.println(result);
		if(result > 0) {
			url = "index.bizpoll";
			
		} else {
			url = "pw_udate.bizpoll";
			
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
