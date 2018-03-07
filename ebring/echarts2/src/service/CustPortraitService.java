package service;

import java.util.List;

import dao.CustDao;
import dao.CustPortraitDao;
import pojo.CustInfo;
import pojo.CustMost;

public class CustPortraitService {
	public List<CustMost> findCustMost(String prodId){
		List<CustMost> custList = null;
		CustPortraitDao custPortraitDao = new CustPortraitDao();
		custList = custPortraitDao.findCustMost(prodId);
		return custList;
	}
	

}
