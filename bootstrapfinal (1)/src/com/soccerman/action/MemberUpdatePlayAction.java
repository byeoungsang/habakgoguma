package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soccerman.dao.MemberDAO;
import com.soccerman.dto.MemberDTO;


public class MemberUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "member.jsp";
		//view단에서 전송한 데이터를 받아오세요.
		String id = request.getParameter("input_id");
		String pw = request.getParameter("input_pw");
		String name = request.getParameter("input_name");
		String zipcode = request.getParameter("sample6_postcode");
		String addr1 = request.getParameter("sample6_address");
		String addr2 = request.getParameter("sample6_address2");
		String emailid = request.getParameter("e_input1");

		String email = emailid;
		String phone = request.getParameter("mid");
/*		String phone2 = request.getParameter("mid");
		String phone3 = request.getParameter("last");
		String phone = phone1 + "@" + phone2 + "@" + phone3;
*/
		
		MemberDTO mDto = new MemberDTO(emailid, pw, name, zipcode, addr1, addr2, email, phone);
		System.out.println(mDto.toString());
				
		MemberDAO mDao= MemberDAO.getInstance();
		int result = mDao.updateMember(mDto);
		if(result > 0) {//성공
			url="index.bizpoll";
		}else {//실패
			url="memberUpdate.bizpoll";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		System.out.println("수정 가즈아");
		return forward;
		
	}

}
