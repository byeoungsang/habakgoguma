package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soccerman.dao.MemberDAO;
import com.soccerman.dto.MemberDTO;



public class MemberPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "welcome.jsp";
		//view단에서 전송한 데이터를 받아오세요.
		String id = request.getParameter("input_id");
		String pw = request.getParameter("input_pw");
		String name = request.getParameter("input_name");
		String zipcode = request.getParameter("sample6_postcode");
		String addr1 = request.getParameter("sample6_address");
		String addr2 = request.getParameter("sample6_address2");
		String emailid = request.getParameter("e_input1");
		String emailurl = request.getParameter("e_input2");
		String email = emailid +"@"+ emailurl;
		String phone = request.getParameter("input_phone");
		
		System.out.println(id + pw + name +zipcode + addr1 + addr2 + email + phone);
		
		MemberDAO mDao= MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(id, pw, name, zipcode, addr1, addr2, email, phone);
		mDao.inputMember(mDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		System.out.println("오고있지???");
		return forward;
	}
}
