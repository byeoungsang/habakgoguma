package com.soccerman.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.soccerman.action.Action;
import com.soccerman.action.ActionForward;
import com.soccerman.action.BoardDetailAction;
import com.soccerman.action.BoardDownloadAction;
import com.soccerman.action.BoardInsertPlayAction;
import com.soccerman.action.BoardViewcntAction;
import com.soccerman.action.ConstractAction;
import com.soccerman.action.IdCheckAction;
import com.soccerman.action.IndexAction;
import com.soccerman.action.LoginAction;
import com.soccerman.action.LoginOutPlayAction;
import com.soccerman.action.LoginPlayAction;
import com.soccerman.action.LoginPlayAction2;
import com.soccerman.action.MemberAction;
import com.soccerman.action.MemberDeleteAction;
import com.soccerman.action.MemberDeletePlayAction;
import com.soccerman.action.MemberPlayAction;
import com.soccerman.action.MemberUpdateAction;
import com.soccerman.action.MemberUpdatePlayAction;
import com.soccerman.action.PwUpdateAction;
import com.soccerman.action.PwUpdatePlayAction;
import com.soccerman.action.WithdrawAction;
import com.soccerman.action.WithdrawPlayAction;
import com.soccerman.action.boardInsertAction;
import com.soccerman.action.boardListAction;
import com.soccerman.action.boardSearchAction;
import com.soccerman.action.boardWriteAction;


/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET, POST 둘다 받음
		
		// 한글꺠짐 방지(POST 방식): 가장 위에 적어ㅏ주세요
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;           // 실제 동작하는부분
		ActionForward forward = null;   // forward, sendRedirect 설정
		
		// uri = ctx = 내가 원하는 Action경로
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());
		
		System.out.println("uri: " + uri);
		System.out.println("ctx: " + ctx);
		System.out.println("페이지이동 ====> " + command);
		
		// Action단 이동
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction();    // 객체 생성
			forward = action.excute(request, response); // 객체(인스턴스) 사용
			// Web에서는 무조건 request, response를 매개변수로 받아야함
		}else if(command.equals("/constract.bizpoll")) {
			action = new ConstractAction();
			forward = action.excute(request, response);
		}else if(command.equals("/member.bizpoll")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		}else if(command.equals("/login.bizpoll")) {
			action = new LoginAction();
			forward = action.excute(request, response);
		}else if(command.equals("/idCheck.bizpoll")) {
			action = new IdCheckAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberplay.bizpoll")) {
			action = new MemberPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/pwCheck.bizpoll")) {
			action = new PwUpdatePlayAction();
			forward = action.excute(request, response);
		}
		else if(command.equals("/LoginPlay.bizpoll")) {
			action = new LoginPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/loginOut.bizpoll")) {
			action = new LoginOutPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberUpdate.bizpoll")) {
			action = new MemberUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberUpdateplay.bizpoll")) {
			action = new MemberUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/member_update_pw.bizpoll")) {
			action = new PwUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/Withdraw1.bizpoll")) {
			action = new WithdrawAction();
			forward = action.excute(request, response);
		}else if(command.equals("/Withdraw.bizpoll")) {
			action = new WithdrawPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberdelete.bizpoll")) {

			action = new MemberDeleteAction();

			forward = action.excute(request, response);

		}	else if(command.equals("/memberdeleteplay.bizpoll")) {

			action = new MemberDeletePlayAction();

			forward = action.excute(request, response);
		}	else if(command.equals("/boardList.bizpoll")) {

			action = new boardListAction();

			forward = action.excute(request, response);
		}else if(command.equals("/boardSearch.bizpoll")) {

			action = new boardSearchAction();

			forward = action.excute(request, response);
		}else if(command.equals("/boardDetail.bizpoll")) {
			action = new BoardDetailAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardViewcnt.bizpoll")) {
			action = new BoardViewcntAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardInsert.bizpoll")) {
			action = new boardInsertAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardInsertPlay.bizpoll")) {
			action = new BoardInsertPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/LoginPlay2.bizpoll")) {
			action = new LoginPlayAction2();
			forward = action.excute(request, response);
		}else if(command.equals("/download.bizpoll")) {
			action = new BoardDownloadAction();
			forward = action.excute(request, response);
		}
		
		// 공통 분기작업(페이지이동)
		if(forward !=null) {
			if(forward.isRedirect()) {  // sendRedirect방식
				response.sendRedirect(forward.getPath());
			} else { // false: forward 방식
				// 목적지: index.jsp
				// 짐: bestlist
				// 이동수단: forward
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}

	}

