package com.soccerman.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soccerman.dao.BoardDAO;
import com.soccerman.dto.BoardDTO;
import com.soccerman.dto.CriteriaDTO;
import com.soccerman.dto.pageMakerDTO;

public class boardListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boardlist.jsp";
		
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			
		}
		System.out.println("페이지번호: " + page);
		criDto.setPage(page);
		
		String flag=null;
		String keyword=null;
		
		if(request.getParameter("keyword")!=null) {
			System.out.println("검색가능");
			
			flag=request.getParameter("flag");
			keyword=request.getParameter("keyword");
			
			criDto.setFlag(flag);
			criDto.setKeyword(keyword);
			
			request.setAttribute("flag", flag);
			request.setAttribute("keyword", keyword);
		}
		
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> boardList = bDao.boardListAll(criDto);
		
		request.setAttribute("boardList", boardList);
		
		// 현재날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);
		
		
		
		pageMakerDTO pageMaker = new pageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		
		int totalcount = bDao.totalCount();
		System.out.println("총개수 " + totalcount);
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println("================================");
		System.out.println(pageMaker.toString());
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		// 여기까지는 써놓고 시작^^
	}
	

}
