package co.kh.dev.tempmember.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import co.kh.dev352.common.DBUtility;

public class TempMEmberDAO {
	private final String SELECT_SQL = "SELECT * FROM TEMPMEMBER";
	private final String SELECT_BY_ID_SQL = "SELECT * FROM TEMPMEMBER WHERE ID = ?";
	private final String SELECT_LOGIN_CHECK_SQL = "SELECT * FROM TEMPMEMBER WHERE ID = ? AND PWD = ?";
	private final String INSERT_SQL = "INSERT INTO TEMPMEMBER VALUES(?,?,?,?,?)";
	private final String DELETE_SQL = "DELETE FROM TEMPMEMBER WHERE ID = ?";
	private final String UPDATE_SQL = "UPDATE TEMPMEMBER SET  PWD = ?, EMAIL = ? , NAME = ?, BIRTH = ? WHERE ID = ?";

	// 전체를 DB에서 출력
	public ArrayList<TempMemberVO> selectDB() {
		Connection con = DBUtility.dbCon();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<TempMemberVO> tmList = new ArrayList<TempMemberVO>();
		try {
			pstmt = con.prepareStatement(SELECT_SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id 		= rs.getString("ID");
				String pwd 		= rs.getString("PASSWD");
				String name 	= rs.getString("NAME");
				String memNum1 	= rs.getString("MEM_NUM1");
				String memNum2 	= rs.getString("MEM_NUM2");
				String eMail 	= rs.getString("E_MAIL");
				String phone 	= rs.getString("PHONE");
				String zipcode	= rs.getString("ZIPCODE");
				String address 	= rs.getString("ADDRESS");
				String job 		= rs.getString("JOB");
				TempMemberVO tmvo = new TempMemberVO(id, pwd, name, memNum1, memNum2, eMail, phone, zipcode, address, job);
				tmList.add(tmvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tmList;
	}

	

}