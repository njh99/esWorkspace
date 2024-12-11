package co.kh.dev.memberone.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.kh.dev.tempmember.model.TempMemberVO;
import co.kh.dev352.common.ConnectionPool;
import co.kh.dev352.common.DBUtility;

public class StudentDAO {
	private final String SELECT_SQL = "SELECT * FROM STUDENT";
	private final String SELECT_BY_ID_SQL = "SELECT COUNT(*) AS COUNT FROM STUDENT WHERE ID = ?";
	private final String SELECT_LOGIN_CHECK_SQL = "SELECT * FROM STUDENT WHERE ID = ? AND PWD = ?";
	private final String INSERT_SQL = "insert into student values(?,?,?,?,?,?,?,?,?,?)";
	private final String DELETE_SQL = "DELETE FROM STUDENT WHERE ID = ?";
	private final String UPDATE_SQL = "UPDATE STUDENT SET  PWD = ?, EMAIL = ? , NAME = ?, BIRTH = ? WHERE ID = ?";
	private final String SELECT_ZIP_SQL = "select * from zipcode where dong like ?";

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
		}finally {
			cp.dbClose(con, pstmt);
		}
		return (count > 0) ? true : false;
	}
}