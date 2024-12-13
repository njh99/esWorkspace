package co.kh.dev.boardone.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.kh.dev.tempmember.model.TempMemberVO;
import co.kh.dev352.common.ConnectionPool;
import co.kh.dev352.common.DBUtility;

public class BoardDAO {
	//싱글톤 1
	private static BoardDAO instance;//싱글톤 방식
	//싱글톤 2
	private BoardDAO() {}
	//싱글톤 3
	public static BoardDAO gerInstance() {
		if(instance == null) {
			synchronized (BoardDAO.class) {
				
				instance = new BoardDAO();
			}
			
		}
		
		
		return instance;
	}
	
	private final String SELECT_SQL = "SELECT * FROM STUDENT";
	private final String SELECT_MAX_NUM_SQL = "select max(num)as NUM from board";
	private final String SELECT_ONE_SQL = "SELECT *  FROM STUDENT WHERE ID = ?";
	private final String SELECT_BY_ID_SQL = "SELECT COUNT(*) AS COUNT FROM STUDENT WHERE ID = ?";
	private final String SELECT_LOGIN_SQL = "SELECT PASS FROM STUDENT WHERE ID = ?";
	private final String INSERT_SQL =  "insert into board(num, writer, email, subject, pass, "
			+ "regdate, ref, step, depth, content, ip)values(board_seq.nextval,?,?,?,?,?,?,?,?,?,?)";
	private final String DELETE_SQL = "DELETE FROM STUDENT WHERE ID = ?";
	private final String UPDATE_SQL = "update student set pass=?, phone1=?, phone2=?, phone3=?, email=?, zipcode=?, address1=?, address2=? where id=?";
	private final String UPDATE_STEP_SQL = "update board set step=step+1 where ref= ? and step> ?";
	private final String SELECT_ZIP_SQL = "select * from zipcode where dong like ?";

	public Boolean insertDB(BoardVO vo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		
		//현재 보드속에 가장 최고값 +1 , 없으면 1
		ResultSet rs = null;
		int count = 0;
		int number =0;
		int step = 0;
		int depth = 0;
		int ref = 1;
		try {
			pstmt = con.prepareStatement("SELECT_MAX_NUM_SQL");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				//가장최고값 +1
				number = rs.getInt("NUM") + 1;
			} else {
				//가장 최근 값이 없으면 1로 세팅
				number = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		 //getNum() 0 이면 새글 , 0 아니면 답변글
		try {
		 if ( vo.getNum() != 0) {//답변글일경우
			    pstmt = con.prepareStatement(UPDATE_STEP_SQL);
				pstmt.setInt(1, vo.getRef());
				pstmt.setInt(2, vo.getStep());
				pstmt.executeUpdate();
				ref= vo.getRef();
				step = vo.getStep() + 1;
				depth = vo.getDepth() + 1;
			 } else {//새 글일 경우
				 ref = number;  //가장 최고값  +1
				 step = 0;
				 depth = 0;
			 }// 쿼리를 작성
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
			  
		
		//게시판 글 등록
		try {
			pstmt = con.prepareStatement(INSERT_SQL);
			pstmt.setString(1, vo.getWriter());
			pstmt.setString(2, vo.getEmail());
			pstmt.setString(3, vo.getSubject());
			pstmt.setString(4, vo.getPass());
			pstmt.setTimestamp(5, vo.getRegdate());
			pstmt.setInt(6, ref);
			pstmt.setInt(7, step);
			pstmt.setInt(8, depth);
			pstmt.setString(9, vo.getContent());
			pstmt.setString(10, vo.getIp());
			count = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt);
		}
		return (count > 0) ? true : false;
	}

	
	
	
	
	
	
	
	
	
	/*
	// 전체를 DB에서 출력
	public ArrayList<StudentVO> selectDB() {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<StudentVO> stList = new ArrayList<StudentVO>();
		try {
			pstmt = con.prepareStatement(SELECT_SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("ID");
				String pwd = rs.getString("PASSWD");
				String name = rs.getString("NAME");
				String memNum1 = rs.getString("MEM_NUM1");
				String memNum2 = rs.getString("MEM_NUM2");
				String eMail = rs.getString("E_MAIL");
				String phone = rs.getString("PHONE");
				String zipcode = rs.getString("ZIPCODE");
				String address = rs.getString("ADDRESS");
				String job = rs.getString("JOB");
				StudentVO tmvo = new StudentVO(id, pwd, name, memNum1, memNum2, eMail, phone, zipcode, address, job);
				stList.add(tmvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt, rs);
		}
		return stList;
	}

	// id체크
	public boolean selectIdCheck(StudentVO svo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(SELECT_BY_ID_SQL);
			pstmt.setString(1, svo.getId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt("COUNT");

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt, rs);
		}
		return (count != 0) ? true : false;
	}

	// 주소체크
	public ArrayList<ZipCodeVO> selectZipCode(ZipCodeVO zvo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ZipCodeVO> zipList = new ArrayList<ZipCodeVO>();
		try {
			pstmt = con.prepareStatement(SELECT_ZIP_SQL);
			String dongValue = "%" + zvo.getDong() + "%";
			pstmt.setString(1, dongValue);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String zipcode = rs.getString("ZIPCODE");
				String sido = rs.getString("SIDO");
				String gugun = rs.getString("GUGUN");
				String dong = rs.getString("DONG");
				String bunji = rs.getString("BUNJI");

				ZipCodeVO obj = new ZipCodeVO(zipcode, sido, gugun, dong, bunji);
				zipList.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt, rs);
		}
		return zipList;
	}

	// 오라클 회원가입 정보 넣기
	public Boolean insertDB(StudentVO svo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(INSERT_SQL);
			pstmt.setString(1, svo.getId());
			pstmt.setString(2, svo.getPass());
			pstmt.setString(3, svo.getName());
			pstmt.setString(4, svo.getPhone1());
			pstmt.setString(5, svo.getPhone2());
			pstmt.setString(6, svo.getPhone3());
			pstmt.setString(7, svo.getEmail());
			pstmt.setString(8, svo.getZipcode());
			pstmt.setString(9, svo.getAddress1());
			pstmt.setString(10, svo.getAddress2());
			count = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt);
		}
		return (count > 0) ? true : false;
	}

	// 로그인 체크
	public int selectLoginCheck(StudentVO svo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pass = null;
		int check = -1;
		try {
			pstmt = con.prepareStatement(SELECT_LOGIN_SQL);
			pstmt.setString(1, svo.getId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				pass = rs.getString("PASS");
				check = (pass.equals(svo.getPass()) == true) ? (1) : (0);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt, rs);
		}
		return check;
	}

	// 수정
	public StudentVO selectOneDB(StudentVO svo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StudentVO resultVO = null;
		try {
			pstmt = con.prepareStatement(SELECT_ONE_SQL);
			pstmt.setString(1, svo.getId());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				String phone1 = rs.getString("phone1");
				String phone2 = rs.getString("phone2");
				String phone3 = rs.getString("phone3");
				String email = rs.getString("email");
				String zipcode = rs.getString("zipcode");
				String Address1 = rs.getString("Address1");
				String Address2 = rs.getString("Address2");
				resultVO = new StudentVO(id, pass, name, phone1, phone2, phone3, email, zipcode, Address1, Address2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt, rs);
		}
		return resultVO;
	}
	
	//정보 수정해서 db로 보내기
	public Boolean updateDB(StudentVO svo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(UPDATE_SQL);
			pstmt.setString(1, svo.getPass());
			pstmt.setString(2, svo.getPhone1());
			pstmt.setString(3, svo.getPhone2());
			pstmt.setString(4, svo.getPhone3());
			pstmt.setString(5, svo.getEmail());
			pstmt.setString(6, svo.getZipcode());
			pstmt.setString(7, svo.getAddress1());
			pstmt.setString(8, svo.getAddress2());
			pstmt.setString(9, svo.getId());
			count = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt);
		}
		return (count > 0) ? true : false;
	}

	//회원 정보 삭제
	public Boolean deleteDB(StudentVO svo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(DELETE_SQL);
			pstmt.setString(1, svo.getId());
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cp.dbClose(con, pstmt);
		}
		return (count > 0) ? true : false;
	}

*/

}