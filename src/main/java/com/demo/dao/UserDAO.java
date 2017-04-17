package com.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.db.DBCP;
import com.demo.vo.User;

public class UserDAO implements IUserDAO{
	private static Connection conn = DBCP.getConnection();
	
	@Override
	public User login(String username,String password){
		User u = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from user where username = ? and password = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if(rs.next()){
				User user = new User();
				
				user.setId(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setTelephone(rs.getString(4));
				
				u = user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}

	@Override
	public List<User> queryAll() {
		// TODO Auto-generated method stub
		List<User> userList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from user order by id";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				User user = new User();
				
				user.setId(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setTelephone(rs.getString(4));
				
				userList.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public boolean delete(User user) {
		// TODO Auto-generated method stub
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "delete from user where username = ? and password = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			if(pstmt.executeUpdate() > 0){
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "insert into user(username,password,telephone) values(?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getTelephone());
			flag = pstmt.executeUpdate() > 0 ? true : false; 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	
}
