package service;

import java.util.List;

import dao.CustDao;
import dao.CustSimDao;
import pojo.CustInfo;
import pojo.CustSim;

public class CustSimService {
	public List<CustSim> findCustSim(String prodId, String custNo, String type){
		List<CustSim> custList = null;
		CustSimDao custDao = new CustSimDao();
		if(type!= null && "buyWith".equals(type)){
			custList = custDao.findBuyWith(prodId, custNo);
		}else if(type!= null && "custInfo".equals(type)){
			custList = custDao.findCustInfo(prodId, custNo);
		}else if(type!= null && "yqzs".equals(type)){
			custList = custDao.findYqzs(prodId, custNo);
		}else {
			custList = custDao.findCustSim(prodId, custNo);
		}
		return custList;
	}
	

}
