package com.kh.edu.board.action;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.edu.board.control.ActionForward;
import com.kh.edu.board.model.BoardDAO;
import com.kh.edu.board.model.BoardVO;

public class WritePro implements CommandAction {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		
	return new ActionForward("/board/list.jsp", false);
																																																																																																				// 뷰
	}

}
