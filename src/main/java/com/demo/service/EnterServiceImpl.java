package com.demo.service;

import com.demo.dao.EnterDAO;
import com.demo.dao.IUserDAO;
import com.demo.dao.UserDAO;
import com.demo.vo.Enter;

public class EnterServiceImpl implements EnterService {
	public boolean Submit(String Enter,String type,String scope,String start_time) {
		// TODO Auto-generated method stub
		EnterDAO dao = new EnterDAO();
		return dao.Submit( Enter,type, scope, start_time);
	}
}
