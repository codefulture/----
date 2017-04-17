package com.demo.service;

import java.util.List;

import com.demo.dao.IUserDAO;
import com.demo.dao.UserDAO;
import com.demo.vo.User;

public class UserServiceImpl implements IUserService {
	
	private IUserDAO dao = new UserDAO();
	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return dao.login(username, password);
	}
	@Override
	public List<User> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}
	@Override
	public boolean delete(User user) {
		// TODO Auto-generated method stub
		return dao.delete(user);
	}
	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		return dao.register(user);
	}

}
