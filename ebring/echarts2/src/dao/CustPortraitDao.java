package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.CustInfo;
import pojo.CustMost;
import util.DBConnection;

public class CustPortraitDao {
	public List<CustMost> findCustMost(String prodId){
		String sql = "select * from PROD_SIGN_MOST_CUST t where t.PROD_ID = ?";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = DBConnection.createPreparedStatement(conn, sql);
		ResultSet rs = null;
		List<CustMost> custlist = new ArrayList<CustMost>();
		try{
			pstmt.setString(1, prodId);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CustMost custInfo = new CustMost();
				custInfo.setAgeLvl(rs.getString("AGE_LVL"));
				custInfo.setCensusRegister(rs.getString("CENSUS_REGISTER"));
				custInfo.setCustClas(rs.getString("CUST_CLAS"));
				custInfo.setDepLvl(rs.getString("DEP_LVL"));
				custInfo.setEduLvl(rs.getString("EDU_LVL"));
				custInfo.setLoanLvl(rs.getString("LOAN_LVL"));
				custInfo.setMonFlow(rs.getString("MON_FLOW"));
				custInfo.setOccuTyp(rs.getString("OCCU_TYP"));
				custInfo.setOpenArea(rs.getString("OPEN_AREA"));
				custInfo.setProdId(rs.getString("PROD_ID"));
				switch(custInfo.getCensusRegister()){
				case "6101": custInfo.setCensusRegister("西安市");break;
				case "6102": custInfo.setCensusRegister("铜川市");break;
				case "6103": custInfo.setCensusRegister("宝鸡市");break;
				case "6104": custInfo.setCensusRegister("咸阳市");break;
				case "6105": custInfo.setCensusRegister("渭南市");break;
				case "6106": custInfo.setCensusRegister("延安市");break;
				case "6107": custInfo.setCensusRegister("汉中市");break;
				case "6108": custInfo.setCensusRegister("榆林市");break;
				case "6109": custInfo.setCensusRegister("安康市");break;
				case "6110": custInfo.setCensusRegister("商洛市");break;
				case "6111": custInfo.setCensusRegister("杨凌示范区");break;
				}
				switch(custInfo.getOpenArea()){
				case "6101": custInfo.setOpenArea("西安市");break;
				case "6102": custInfo.setOpenArea("铜川市");break;
				case "6103": custInfo.setOpenArea("宝鸡市");break;
				case "6104": custInfo.setOpenArea("咸阳市");break;
				case "6105": custInfo.setOpenArea("渭南市");break;
				case "6106": custInfo.setOpenArea("延安市");break;
				case "6107": custInfo.setOpenArea("汉中市");break;
				case "6108": custInfo.setOpenArea("榆林市");break;
				case "6109": custInfo.setOpenArea("安康市");break;
				case "6110": custInfo.setOpenArea("商洛市");break;
				case "6111": custInfo.setOpenArea("杨凌示范区");break;
				}
				switch(custInfo.getAgeLvl()){
				case "1": custInfo.setAgeLvl("16以下");break;
				case "2": custInfo.setAgeLvl("17-35");break;
				case "3": custInfo.setAgeLvl("35-65");break;
				case "4": custInfo.setAgeLvl("65以上");break;
				}
				switch(custInfo.getCustClas()){
				case "1": custInfo.setCustClas("准星");break;
				case "2": custInfo.setCustClas("一星");break;
				case "3": custInfo.setCustClas("二星");break;
				case "4": custInfo.setCustClas("三星");break;
				case "5": custInfo.setCustClas("四星");break;
				case "6": custInfo.setCustClas("五星");break;
				case "7": custInfo.setCustClas("六星");break;
				case "8": custInfo.setCustClas("七星");break;
				case "9": custInfo.setCustClas("八星");break;
				case "10": custInfo.setCustClas("九星");break;
				}
				switch(custInfo.getDepLvl()){
				case "1": custInfo.setDepLvl("1万以下");break;
				case "2": custInfo.setDepLvl("1万-10万");break;
				case "3": custInfo.setDepLvl("10万-50万");break;
				case "4": custInfo.setDepLvl("50万-100万");break;
				case "5": custInfo.setDepLvl("100万-500万");break;
				case "6": custInfo.setDepLvl("500万-1000万");break;
				case "7": custInfo.setDepLvl("1000万-3000万");break;
				case "8": custInfo.setDepLvl("3000万-6000万");break;
				case "9": custInfo.setDepLvl("6000万-9000万");break;
				case "10": custInfo.setDepLvl("9000万以上");break;
				}
				switch(custInfo.getEduLvl()){
				case "1": custInfo.setEduLvl("博士");break;
				case "2": custInfo.setEduLvl("硕士");break;
				case "3": custInfo.setEduLvl("本科");break;
				case "4": custInfo.setEduLvl("大专");break;
				case "5": custInfo.setEduLvl("中专");break;
				case "6": custInfo.setEduLvl("技校");break;
				case "7": custInfo.setEduLvl("高中");break;
				case "8": custInfo.setEduLvl("初中");break;
				case "9": custInfo.setEduLvl("小学");break;
				case "10": custInfo.setEduLvl("未知");break;
				}
				switch(custInfo.getLoanLvl()){
				case "1": custInfo.setLoanLvl("1万以下");break;
				case "2": custInfo.setLoanLvl("1万-10万");break;
				case "3": custInfo.setLoanLvl("10万-50万");break;
				case "4": custInfo.setLoanLvl("50万-100万");break;
				case "5": custInfo.setLoanLvl("100万-500万");break;
				case "6": custInfo.setLoanLvl("500万-1000万");break;
				case "7": custInfo.setLoanLvl("1000万-3000万");break;
				case "8": custInfo.setLoanLvl("3000万-6000万");break;
				case "9": custInfo.setLoanLvl("6000万-9000万");break;
				case "10": custInfo.setLoanLvl("9000万以上");break;
				}
				switch(custInfo.getMonFlow()){
				case "1": custInfo.setMonFlow("1万以下");break;
				case "2": custInfo.setMonFlow("1万-10万");break;
				case "3": custInfo.setMonFlow("10万-50万");break;
				case "4": custInfo.setMonFlow("50万-100万");break;
				case "5": custInfo.setMonFlow("100万-500万");break;
				case "6": custInfo.setMonFlow("500万-1000万");break;
				case "7": custInfo.setMonFlow("1000万-3000万");break;
				case "8": custInfo.setMonFlow("3000万-6000万");break;
				case "9": custInfo.setMonFlow("6000万-9000万");break;
				case "10": custInfo.setMonFlow("9000万以上");break;
				}
				switch(custInfo.getOccuTyp()){
				case "1": custInfo.setOccuTyp("公司职员");break;
				case "2": custInfo.setOccuTyp("公务员");break;
				case "3": custInfo.setOccuTyp("事业单位");break;
				case "4": custInfo.setOccuTyp("个体经营");break;
				case "5": custInfo.setOccuTyp("自由职业");break;
				case "6": custInfo.setOccuTyp("教师");break;
				case "7": custInfo.setOccuTyp("无业");break;
				case "8": custInfo.setOccuTyp("学生");break;
				case "9": custInfo.setOccuTyp("其他");break;
				case "10": custInfo.setOccuTyp("未知");break;
				}
				custlist.add(custInfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return custlist;
	}

}
