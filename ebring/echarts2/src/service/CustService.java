package service;

import java.util.List;

import dao.CustDao;
import pojo.CustInfo;

public class CustService {
	public List<CustInfo> findProdInfo(){
		List<CustInfo> custList = null;
		CustDao custDao = new CustDao();
		custList = custDao.findProdInfo();
		return custList;
	}
	
	public List<CustInfo> findCustInfo(String selTyp, String value){
		List<CustInfo> custList = null;
		CustDao custDao = new CustDao();
		custList = custDao.findCustInfo(selTyp, value);
		return custList;
	}
	

}
