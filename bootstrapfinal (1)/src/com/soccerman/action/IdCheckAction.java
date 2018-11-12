package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.soccerman.dao.MemberDAO;

public class IdCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("id");
		System.out.println("id: " + userid);
		
		if(userid != null) {
			if(userid.trim().equals("") == false) {
				MemberDAO mDao = MemberDAO.getInstance();
				String msg = mDao.confirmID(userid);
				System.out.println("메세지: " + msg);
				/* Ajax => JSON 방식 => 값을 다시 전달 JSON방식
				 * requesrt.setAttribute
				 */
				JSONObject jObj = new JSONObject();
				jObj.put("message", msg);
				jObj.put("id", userid);
				
				response.setContentType("apllication/x-json); charset=UTF-8 ");
				response.getWriter().print(jObj);		
					
			}
		}
		return null;
	}

}
