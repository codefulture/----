package com.demo.service;

import java.util.List;

import com.demo.vo.User;

public interface IUserService {
	public User login(String username,String password);
	public List<User> queryAll();
	public boolean delete(User user);
	public boolean register(User user);
}
