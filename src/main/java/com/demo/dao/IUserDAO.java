package com.demo.dao;


import java.util.List;

import com.demo.vo.User;

public interface IUserDAO {
	public User login(String username,String password);
	public List<User> queryAll();
	public boolean delete(User user);
	public boolean register(User user);
}
