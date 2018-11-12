package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.soccerman.dao.MemberDAO;

public class MemberDeletePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("지우러 옴");
		HttpSession session = request.getSession();
		String userid = request.getParameter("id");
		String userpw = request.getParameter("pw");
		System.out.println(userid + ", " + userpw);
		
		MemberDAO mDao = MemberDAO.getInstance();
		String message = mDao.confirmPW(userid, userpw);
		
		
		// 회원 탈퇴 기능
		if(message.equals("-1")) { //올바른 비밀번호 입력
			System.out.println("회원삭제");
			int flag = mDao.deleteMember(userid);
			
			if(flag > 0) { // 회원삭제 성공
				 if(session != null) {
					 // session을 초기화 => 로그인 정보 삭제
					 session.invalidate();
				 }
			} else { //회원삭제 실패
				
			}
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jObj);
		
		
		
		return null;
	}

}