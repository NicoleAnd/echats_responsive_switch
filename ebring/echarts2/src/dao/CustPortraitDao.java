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
				case "6101": custInfo.setCensusRegister("������");break;
				case "6102": custInfo.setCensusRegister("ͭ����");break;
				case "6103": custInfo.setCensusRegister("������");break;
				case "6104": custInfo.setCensusRegister("������");break;
				case "6105": custInfo.setCensusRegister("μ����");break;
				case "6106": custInfo.setCensusRegister("�Ӱ���");break;
				case "6107": custInfo.setCensusRegister("������");break;
				case "6108": custInfo.setCensusRegister("������");break;
				case "6109": custInfo.setCensusRegister("������");break;
				case "6110": custInfo.setCensusRegister("������");break;
				case "6111": custInfo.setCensusRegister("����ʾ����");break;
				}
				switch(custInfo.getOpenArea()){
				case "6101": custInfo.setOpenArea("������");break;
				case "6102": custInfo.setOpenArea("ͭ����");break;
				case "6103": custInfo.setOpenArea("������");break;
				case "6104": custInfo.setOpenArea("������");break;
				case "6105": custInfo.setOpenArea("μ����");break;
				case "6106": custInfo.setOpenArea("�Ӱ���");break;
				case "6107": custInfo.setOpenArea("������");break;
				case "6108": custInfo.setOpenArea("������");break;
				case "6109": custInfo.setOpenArea("������");break;
				case "6110": custInfo.setOpenArea("������");break;
				case "6111": custInfo.setOpenArea("����ʾ����");break;
				}
				switch(custInfo.getAgeLvl()){
				case "1": custInfo.setAgeLvl("16����");break;
				case "2": custInfo.setAgeLvl("17-35");break;
				case "3": custInfo.setAgeLvl("35-65");break;
				case "4": custInfo.setAgeLvl("65����");break;
				}
				switch(custInfo.getCustClas()){
				case "1": custInfo.setCustClas("׼��");break;
				case "2": custInfo.setCustClas("һ��");break;
				case "3": custInfo.setCustClas("����");break;
				case "4": custInfo.setCustClas("����");break;
				case "5": custInfo.setCustClas("����");break;
				case "6": custInfo.setCustClas("����");break;
				case "7": custInfo.setCustClas("����");break;
				case "8": custInfo.setCustClas("����");break;
				case "9": custInfo.setCustClas("����");break;
				case "10": custInfo.setCustClas("����");break;
				}
				switch(custInfo.getDepLvl()){
				case "1": custInfo.setDepLvl("1������");break;
				case "2": custInfo.setDepLvl("1��-10��");break;
				case "3": custInfo.setDepLvl("10��-50��");break;
				case "4": custInfo.setDepLvl("50��-100��");break;
				case "5": custInfo.setDepLvl("100��-500��");break;
				case "6": custInfo.setDepLvl("500��-1000��");break;
				case "7": custInfo.setDepLvl("1000��-3000��");break;
				case "8": custInfo.setDepLvl("3000��-6000��");break;
				case "9": custInfo.setDepLvl("6000��-9000��");break;
				case "10": custInfo.setDepLvl("9000������");break;
				}
				switch(custInfo.getEduLvl()){
				case "1": custInfo.setEduLvl("��ʿ");break;
				case "2": custInfo.setEduLvl("˶ʿ");break;
				case "3": custInfo.setEduLvl("����");break;
				case "4": custInfo.setEduLvl("��ר");break;
				case "5": custInfo.setEduLvl("��ר");break;
				case "6": custInfo.setEduLvl("��У");break;
				case "7": custInfo.setEduLvl("����");break;
				case "8": custInfo.setEduLvl("����");break;
				case "9": custInfo.setEduLvl("Сѧ");break;
				case "10": custInfo.setEduLvl("δ֪");break;
				}
				switch(custInfo.getLoanLvl()){
				case "1": custInfo.setLoanLvl("1������");break;
				case "2": custInfo.setLoanLvl("1��-10��");break;
				case "3": custInfo.setLoanLvl("10��-50��");break;
				case "4": custInfo.setLoanLvl("50��-100��");break;
				case "5": custInfo.setLoanLvl("100��-500��");break;
				case "6": custInfo.setLoanLvl("500��-1000��");break;
				case "7": custInfo.setLoanLvl("1000��-3000��");break;
				case "8": custInfo.setLoanLvl("3000��-6000��");break;
				case "9": custInfo.setLoanLvl("6000��-9000��");break;
				case "10": custInfo.setLoanLvl("9000������");break;
				}
				switch(custInfo.getMonFlow()){
				case "1": custInfo.setMonFlow("1������");break;
				case "2": custInfo.setMonFlow("1��-10��");break;
				case "3": custInfo.setMonFlow("10��-50��");break;
				case "4": custInfo.setMonFlow("50��-100��");break;
				case "5": custInfo.setMonFlow("100��-500��");break;
				case "6": custInfo.setMonFlow("500��-1000��");break;
				case "7": custInfo.setMonFlow("1000��-3000��");break;
				case "8": custInfo.setMonFlow("3000��-6000��");break;
				case "9": custInfo.setMonFlow("6000��-9000��");break;
				case "10": custInfo.setMonFlow("9000������");break;
				}
				switch(custInfo.getOccuTyp()){
				case "1": custInfo.setOccuTyp("��˾ְԱ");break;
				case "2": custInfo.setOccuTyp("����Ա");break;
				case "3": custInfo.setOccuTyp("��ҵ��λ");break;
				case "4": custInfo.setOccuTyp("���徭Ӫ");break;
				case "5": custInfo.setOccuTyp("����ְҵ");break;
				case "6": custInfo.setOccuTyp("��ʦ");break;
				case "7": custInfo.setOccuTyp("��ҵ");break;
				case "8": custInfo.setOccuTyp("ѧ��");break;
				case "9": custInfo.setOccuTyp("����");break;
				case "10": custInfo.setOccuTyp("δ֪");break;
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
