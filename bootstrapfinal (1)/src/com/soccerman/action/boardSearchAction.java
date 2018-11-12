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

public class boardSearchAction implements Action {

	




	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 여기부터 
		String url = "board/boardlist.jsp";
		
		String keyword = request.getParameter("keyword");
		String flag = request.getParameter("flag");
		System.out.println(keyword);
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			
		}
		System.out.println("페이지번호: " + page);
		criDto.setPage(page);
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		criDto.setKeyword(keyword);
		criDto.setFlag(flag);
		List<BoardDTO> SearchList = bDao.boardSearch(criDto);
		request.setAttribute("boardList", SearchList);
		
		// 현재날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);
		
		
		
		pageMakerDTO pageMaker = new pageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalcount = bDao.totalCount();
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