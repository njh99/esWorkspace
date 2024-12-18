package co.kh.dev.student.action;

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.kh.dev.student.control.ActionForward;
import co.kh.dev.student.model.StudentDAO;
import co.kh.dev.student.model.ZipCodeVO;

public class LoginFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 request.setCharacterEncoding("UTF-8");
		 
		 return new ActionForward("/mvcmem/login.jsp", false);
	}

}
