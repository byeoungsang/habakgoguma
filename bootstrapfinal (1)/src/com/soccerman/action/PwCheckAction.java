package com.soccerman.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.soccerman.dao.MemberDAO;

public class PwCheckAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("id: " + id);
		System.out.println("pw: " + pw);
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		String message = mDao.confirmPW(id, pw);
		
		System.out.println(message);
		
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		jObj.put("pw", pw);
		
		response.setContentType("application/ x-json; charset=UTF-8");
		response.getWriter().print(jObj);
		
		return null;
	}

}
