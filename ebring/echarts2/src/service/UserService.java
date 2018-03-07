package service;

import java.util.List;

import dao.UserDao;
import pojo.CustMost;
import util.Validation;

public class UserService {
	public List<CustMost> loginValidStatement(String prodId, String selectType, String sortName, String paraType){
		List<CustMost> user = null;
		if(!Validation.isEmpty(prodId)){
			UserDao userDao = new UserDao();
			user = userDao.validStatement(prodId, selectType, sortName, paraType);
		}
		return user;
	}

}
