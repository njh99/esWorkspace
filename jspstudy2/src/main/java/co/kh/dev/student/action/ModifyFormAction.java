package co.kh.dev.student.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.kh.dev.student.control.ActionForward;
import co.kh.dev.student.model.StudentDAO;
import co.kh.dev.student.model.StudentVO;

public class ModifyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 StudentDAO dao = StudentDAO.getInstance(); 
		 HttpSession session = request.getSession();
		 String loginID = (String)session.getAttribute("loginID");
		 StudentVO vo = new StudentVO();
		 vo.setId(loginID);
		 StudentVO svo = dao.selectOneDB(vo);
		 request.setAttribute("svo", svo);
		 
		 return new ActionForward("/mvcmem/modifyForm.jsp",false);
	}
}
