package co.kh.dev.makelogin.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.kh.dev.makelogin.model.MakeLoginVO;
import co.kh.dev.tempmember.model.TempMemberVO;
import co.kh.dev352.common.ConnectionPool;
import co.kh.dev352.common.DBUtility;

public class MakeLoginDAO {
	private final String SELECT_SQL = "SELECT * FROM makelogin";
	private final String SELECT_BY_ID_SQL = "SELECT COUNT(*) AS COUNT FROM makelogin WHERE ID = ?";
	private final String SELECT_LOGIN__SQL = "SELECT PASS1 FROM makelogin WHERE ID = ?";
	private final String INSERT_SQL = "insert into makelogin values(?,?,?,?,?,?,?,?,?)";
	private final String DELETE_SQL = "DELETE FROM makelogin WHERE ID = ?";
	private final String UPDATE_SQL = "UPDATE makelogin SET  PASS1 = ?, PASS2 =? ,NAME = ?,PHONE =? ,  EMAIL = ?, ZIPCODE =? ,ADDRESS1 =?, ADDRESS2 =?,WHERE ID = ?";
	private final String SELECT_ZIP_SQL = "select * from zipcode where dong like ?";

	// 전체를 DB에서 출력
	public ArrayList<MakeLoginVO> selectDB() {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MakeLoginVO> stList = new ArrayList<MakeLoginVO>();
		try {
			pstmt = con.prepareStatement(SELECT_SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("ID");
				String pass1 = rs.getString("PASS1");
				String pass2 = rs.getString("PASS2");
				String name = rs.getString("NAME");
				String phone = rs.getString("PHONE");
				String eMail = rs.getString("E_MAIL");
				String zipcode = rs.getString("ZIPCODE");
				String address1 = rs.getString("ADDRESS1");
				String address2 = rs.getString("ADDRESS2");
				MakeLoginVO tmvo = new MakeLoginVO(id, pass1, pass2, name, phone, eMail, zipcode, address1, address2);
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
	public boolean selectIdCheck(MakeLoginVO mvo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(SELECT_BY_ID_SQL);
			pstmt.setString(1, mvo.getId());
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

	public Boolean insertDB(MakeLoginVO mvo) {
		ConnectionPool cp = ConnectionPool.getInstance();
		Connection con = cp.dbCon();
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			pstmt = con.prepareStatement(INSERT_SQL);
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPass1());
			pstmt.setString(3, mvo.getPass2());
			pstmt.setString(4, mvo.getName());
			pstmt.setString(5, mvo.getPhone());
			pstmt.setString(6, mvo.getEmail());
			pstmt.setString(7, mvo.getZipcode());
			pstmt.setString(8, mvo.getAddress1());
			pstmt.setString(9, mvo.getAddress2());
			count = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			cp.dbClose(con, pstmt);
		}
		return (count > 0) ? true : false;
	}
	// 로그인 체크
		public int selectLoginCheck(MakeLoginVO mvo) {
			ConnectionPool cp = ConnectionPool.getInstance();
			Connection con = cp.dbCon();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String pass = null;
			int check = -1;
			try {
				pstmt = con.prepareStatement(SELECT_LOGIN__SQL);
				pstmt.setString(1, mvo.getId());
				rs = pstmt.executeQuery();
				if (rs.next()) {
					pass = rs.getString("PASS1");
					check = (pass.equals(mvo.getPass1()) == true) ? (1) : (0);

				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				cp.dbClose(con, pstmt, rs);
			}
			return check;
		}
		/*
		 * // 수정 public MakeLoginVO selectOneDB(MakeLoginVO mvo) { ConnectionPool cp =
		 * ConnectionPool.getInstance(); Connection con = cp.dbCon(); PreparedStatement
		 * pstmt = null; ResultSet rs = null; MakeLoginVO resultVO = null; try { pstmt =
		 * con.prepareStatement(SELECT_ONE_SQL); pstmt.setString(1, mvo.getId()); rs =
		 * pstmt.executeQuery(); while (rs.next()) { String id = rs.getString("id");
		 * String pass = rs.getString("pass"); String name = rs.getString("name");
		 * String phone1 = rs.getString("phone1"); String phone2 =
		 * rs.getString("phone2"); String phone3 = rs.getString("phone3"); String email
		 * = rs.getString("email"); String zipcode = rs.getString("zipcode"); String
		 * Address1 = rs.getString("Address1"); String Address2 =
		 * rs.getString("Address2"); resultVO = new MakeLoginVO(id, pass, name, phone1,
		 * phone2, phone3, email, zipcode, Address1, Address2); } } catch (SQLException
		 * e) { e.printStackTrace(); } finally { cp.dbClose(con, pstmt, rs); } return
		 * resultVO; }
		 * 
		 * //정보 수정해서 db로 보내기 public Boolean updateDB(MakeLoginVO mvo) { ConnectionPool
		 * cp = ConnectionPool.getInstance(); Connection con = cp.dbCon();
		 * PreparedStatement pstmt = null; int count = 0; try { pstmt =
		 * con.prepareStatement(UPDATE_SQL); pstmt.setString(1, mvo.getPass1());
		 * pstmt.setString(2, mvo.getPhone()); pstmt.setString(3, mvo.getPhone2());
		 * pstmt.setString(4, mvo.getPhone3()); pstmt.setString(5, mvo.getEmail());
		 * pstmt.setString(6, mvo.getZipcode()); pstmt.setString(7, mvo.getAddress1());
		 * pstmt.setString(8, mvo.getAddress2()); pstmt.setString(9, mvo.getId()); count
		 * = pstmt.executeUpdate();
		 * 
		 * } catch (SQLException e) { e.printStackTrace(); } finally { cp.dbClose(con,
		 * pstmt); } return (count > 0) ? true : false; }
		 * 
		 * //회원 정보 삭제 public Boolean deleteDB(MakeLoginVO mvo) { ConnectionPool cp =
		 * ConnectionPool.getInstance(); Connection con = cp.dbCon(); PreparedStatement
		 * pstmt = null; int count = 0; try { pstmt = con.prepareStatement(DELETE_SQL);
		 * pstmt.setString(1, mvo.getId()); count = pstmt.executeUpdate(); } catch
		 * (SQLException e) { e.printStackTrace(); } finally { cp.dbClose(con, pstmt); }
		 * return (count > 0) ? true : false; }
		 */


	}