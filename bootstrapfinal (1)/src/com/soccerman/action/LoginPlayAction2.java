package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soccerman.dao.MemberDAO;
import com.soccerman.dto.MemberDTO;

public class LoginPlayAction2 implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="boardwrite.jsp";
		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("login_id_input");
		String pw = request.getParameter("login_pw_input");
		System.out.println(id +","+ pw);
		
		//DAO클래스에 LoginCheck()	메서드를 활용하여
		//id와 pw값으로 Select절에 where조건으로 검색 후
		//결과값을 가지고 현재 지금 이곳 Action단으로 돌아오는 코드를 작성
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = mDao.loginCheck(id,pw);
		
        if(mDto != null ) {  //로그인 성공
            // session값에 login된 회원정보를 담아야함
            session.removeAttribute("id"); //혹시모를 기존에 남아있는 값을 제거
            // session은 DTO객체로 값 받기, List는 안됨!
            session.setAttribute("loginUser", mDto);
            url = "boardwrite.jsp";
        } else {  //로그인 실패
        		
        }
        ActionForward forward = new ActionForward();
        forward.setPath(url);
        forward.setRedirect(true);
        
		return forward;
	}
	

}