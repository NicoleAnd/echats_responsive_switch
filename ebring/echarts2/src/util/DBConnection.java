package util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBConnection {
	private static String dbDriver = null;
	private static String url = null;
	private static String usr = null;
	private static String pwd = null;
	
	public static void loadProperties(){
		Properties props = new Properties();
		try{
			props.load(DBConnection.class.getClassLoader().getResourceAsStream("db.properties"));
		}
		catch(IOException e){
			e.printStackTrace();
		}
		
		dbDriver = (String)props.get("dbDriver");
		url = (String)props.get("url");
		usr = (String)props.get("usr");
		pwd = (String)props.get("pwd");
		
	}
	
	public static Connection getConnection(){
		loadProperties();
		Connection conn = null;
		try{
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(url,usr,pwd);
		}
		catch(ClassNotFoundException e){
			System.out.println("δ�ҵ�������");
			e.printStackTrace();
		}
		catch(SQLException e){
			System.out.println("���ݿ�����ʧ��");
			e.printStackTrace();
		}
		return conn;
	}

	public static Statement createStatement(Connection conn){
		Statement stmt = null;
		try{
			stmt = conn.createStatement();
		}
		catch(SQLException e){
			System.out.println("δ���Statement����");
			e.printStackTrace();
		}
		return stmt;
	}
	
	public static PreparedStatement createPreparedStatement(Connection conn, String sql){
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql);
		}
		catch(SQLException e){
			System.out.println("δ���PreparedStatement����");
			e.printStackTrace();
		}
		return pstmt;
	}
	
	public static PreparedStatement createPreparedStatement(Connection conn, String sql, int autoGeneratedKeys){
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql, autoGeneratedKeys);
		}
		catch(SQLException e){
			System.out.println("δ���PreparedStatement����");
			e.printStackTrace();
		}
		return pstmt;
	}

	public static ResultSet executeQuery(Statement stmt, String sql){
		ResultSet rs = null;
		try{
			rs = stmt.executeQuery(sql);
		}
		catch(SQLException e){
			System.out.println("���ݿ��ѯʧ��");
			e.printStackTrace();
		}
		return rs;
	}

	public static int executeUpdate(Connection conn, String sql){
		Statement stmt = null;
		int row  = 0;
		try{
			stmt = conn.createStatement();
			row = stmt.executeUpdate(sql);
		}
		catch(SQLException e){
			System.out.println("���ݿ���²���ʧ��");
			e.printStackTrace();
		}
		return row;
	}
	
	public static void closeResultSet(ResultSet rs){
		if(null != rs){
			try{
				rs.close();
			}
			catch(SQLException e){
				System.out.println("ResultSet����ر�ʧ��");
				e.printStackTrace();
			}
		}
		rs = null;
	}
	
	public static void closePreparedStatement(PreparedStatement pstmt){
		if(null != pstmt){
			try{
				pstmt.close();
			}
			catch(SQLException e){
				System.out.println("PreparedStatement����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				pstmt = null;
			}
		}
	}
	
	public static void closeStatement(Statement stmt){
		if(null != stmt){
			try{
				stmt.close();
			}
			catch(SQLException e){
				System.out.println("Statement����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				stmt = null;
			}
		}
	}
	
	public static void closeConnection(Connection conn){
		if(null != conn){
			try{
				conn.close();
			}
			catch(SQLException e){
				System.out.println("Connection����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				conn = null;
			}
		}
	}
	
	public static void close(Connection conn, Statement stmt, ResultSet rs){
		if(null != rs){
			try{
				rs.close();
			}
			catch(SQLException e){
				System.out.println("ResultSet����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				rs = null;
			}
		}
		if(null != stmt){
			try{
				stmt.close();
			}
			catch(SQLException e){
				System.out.println("Statement����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				stmt = null;
			}
		}
		
		
		if(null != conn){
			try{
				conn.close();
			}
			catch(SQLException e){
				System.out.println("Connection����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				conn = null;
			}
		}
		
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs){
		if(null != rs){
			try{
				rs.close();
			}
			catch(SQLException e){
				System.out.println("ResultSet����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				rs = null;
			}
		}
		
		if(null != pstmt){
			try{
				pstmt.close();
			}
			catch(SQLException e){
				System.out.println("PreparedStatement����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				pstmt = null;
			}
		}
		
		if(null != conn){
			try{
				conn.close();
			}
			catch(SQLException e){
				System.out.println("Connection����ر�ʧ��");
				e.printStackTrace();
			}
			finally{
				conn = null;
			}
		}
	}

}