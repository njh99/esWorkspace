package co.kh.dev352.bbs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "visitInsert", urlPatterns = { "/visitInsert" })
public class VisitInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public VisitInsert() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.1 전송된 값을 UTF-8 가져오기.
		request.setCharacterEncoding("UTF-8");
		// 1.1 정보가져오기
		String writer = request.getParameter("writer");
		String memo = request.getParameter("memo");

		// 2. visit 테이블에 저장한다.(프로토콜: 약속)
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean successFlag = false;// 오라클에서 작업할 쿼리문 사용할게 하는 명령문
		// db.properties 에서 id, pw 가져오기

		String VISIT_INSERT = "INSERT INTO VISIT VALUES(VISIT_seq.NEXTVAL, ?, ?,SYSDATE) ";
		// 1. jdbc driver load 2. connection
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe", "webuser", "123456");
			pstmt = con.prepareStatement(VISIT_INSERT);
			pstmt.setString(1, writer);
			pstmt.setString(2, memo);

			int count = pstmt.executeUpdate();
			successFlag = (count != 0) ? (true) : (false);
		} catch (SQLException e) {
			System.out.println(e.toString());
			System.out.println(e.toString());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();

				} catch (SQLException e) {
					System.out.println(e.toString());
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();

				} catch (SQLException e) {
					System.out.println(e.toString());
				}
			}
		}
		// 3. 화면
		if (successFlag == true) {

			System.out.println("입력성공");
			response.sendRedirect("visitList");
		} else {
			System.out.println("입력실패");
		}
	}

}
