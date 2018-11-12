package com.soccerman.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.soccerman.common.Constants;
import com.soccerman.dao.BoardDAO;
import com.soccerman.dto.BoardDTO;


public class BoardInsertPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("오냐");
		String url ="boardList.bizpoll";
		
		//file업로드 처리
		File uploadDir = new File(Constants.UPLOAD_PATH);
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		//request를 확장 시킨 multpartRequest생성
		MultipartRequest multi = new MultipartRequest(request,
													  Constants.UPLOAD_PATH,
													  Constants.MAX_UPLOAD,
													  "UTF-8",new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("title");
		String content = multi.getParameter("content_input");
		String writer = multi.getParameter("writer");
		String filename = " ";//공백 
		int filesize=0;
		System.out.println(title +","+content+","+writer);
		
		try {
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file1 =(String)files.nextElement();
				filename=multi.getFilesystemName(file1);
				File fl = multi.getFile(file1);
				
				if(fl!=null) {
					filesize=(int)fl.length(); // 파일 사이즈 저장 
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if(filename ==null || filename.trim().equals("")) {
			filename="-";
		}
			
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = new BoardDTO(title, content, writer, filename, filesize);
		int result = bDao.boardInsert(bDto);
		
/*		if(result>0) {
			System.out.println("게시글 등록성공");
		}else {
			System.out.println("게시글 등록 실패");
		}*/
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
