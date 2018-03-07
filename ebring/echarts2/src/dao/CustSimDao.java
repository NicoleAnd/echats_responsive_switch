package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import pojo.CustSim;
import util.DBConnection;

public class CustSimDao {
	public List<CustSim> findCustSim(String prodId, String custNo){
		String sql = "select x.*,c.CUST_NAME from (select * from CUST_PROD_SIM t where t.PROD_ID = ?) x LEFT JOIN CUST_INFO c on x.CUST_NO=c.CUST_NO";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = DBConnection.createPreparedStatement(conn, sql);
		ResultSet rs = null;
		List<CustSim> custlist = new ArrayList<CustSim>();
		try{
			pstmt.setString(1, prodId);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CustSim custSim = new CustSim();
				custSim.setCustNo(rs.getString("CUST_NO"));
				custSim.setCustName(rs.getString("CUST_NAME"));
				custSim.setProdId(rs.getString("PROD_ID"));
				custSim.setSim(rs.getString("SIM"));
				custlist.add(custSim);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return custlist;
	}
	
	public List<CustSim> findBuyWith(String prodId, String custNo){
		String sql = "select * from PROD_BUY_WITH t where t.PROD_ID1 = ?";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = DBConnection.createPreparedStatement(conn, sql);
		ResultSet rs = null;
		List<CustSim> custlist = new ArrayList<CustSim>();
		try{
			pstmt.setString(1, prodId);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CustSim custSim = new CustSim();
				custSim.setProdId(rs.getString("PROD_ID1"));
				custSim.setCustNo(rs.getString("PROD_ID2"));
//				custSim.setCustName(rs.getString("CUST_NAME"));
				custSim.setSim(rs.getString("CONFIDENCE"));
				custlist.add(custSim);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return custlist;
	}
	
	public List<CustSim> findCustInfo(String prodId, String custNo){
		if(custNo != null && "".equals(custNo)){
			custNo = "1";
		}
		String sql = "select x.*, c.CUST_NAME from (select t.PROD_ID1, t.PROD_ID2, t.CUST_NO from PROD_RECOMMEND_CUST_LIST t where t.PROD_ID1 = ? and t.PROD_ID2 = ?) x LEFT JOIN CUST_INFO c on x.CUST_NO=c.CUST_NO";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = DBConnection.createPreparedStatement(conn, sql);
		ResultSet rs = null;
		List<CustSim> custlist = new ArrayList<CustSim>();
		try{
			pstmt.setString(1, prodId);
			pstmt.setString(2, custNo);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CustSim custSim = new CustSim();
				custSim.setProdId(prodId);
				custSim.setSim(custNo);
				custSim.setCustNo(rs.getString("CUST_NO"));
				custSim.setCustName(rs.getString("CUST_NAME"));
				custlist.add(custSim);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return custlist;
	}
	
	public List<CustSim> findYqzs(String prodId, String custNo){
		String sql = "select * from SentimentAnalysis t where t.score order by TO_DAYS(date) desc LIMIT 0, 7";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = DBConnection.createPreparedStatement(conn, sql);
		ResultSet rs = null;
		List<CustSim> custlist = new ArrayList<CustSim>();
		try{
			rs = pstmt.executeQuery();
			while(rs.next()){
				CustSim custSim = new CustSim();
				custSim.setCustNo(rs.getString("date"));
				custSim.setProdId(rs.getString("score"));
				custlist.add(custSim);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		Collections.reverse(custlist);
		return custlist;
	}

}
