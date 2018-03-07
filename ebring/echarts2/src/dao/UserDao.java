package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.CustMost;
import util.DBConnection;

public class UserDao {

	public List<CustMost> validStatement(String prodId, String selectType, String sortName, String paraType) {
		System.out.println("***********************");
//		String sql = "select * from PROD_SIGN_CNT_BY_"+selectType+" t where t.PROD_ID = ? order by "+sortName+" asc";
		String sql = "select x.*,s.PARA_NAME from (select t.* from PROD_SIGN_CNT_BY_"+selectType+" t where t.PROD_ID = ?) x LEFT JOIN SYS_PARAM_INFO s on (x."+sortName+" = s.PARA_ID and s.PARA_TYPE = ?) order by CONVERT("+sortName+",SIGNED) asc";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = DBConnection.createPreparedStatement(conn, sql);
		ResultSet rs = null;
		List<CustMost> agelist = new ArrayList<CustMost>();
		try{
			pstmt.setString(1, prodId);
			pstmt.setString(2, paraType);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CustMost cm = new CustMost();
				cm.setAgeLvl(rs.getString("BUY_CNT"));
				cm.setProdId(rs.getString("PARA_NAME"));
				agelist.add(cm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		
		return agelist;
	}
	
}
