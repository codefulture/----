package com.demo.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.demo.db.DBCP;
import com.demo.vo.Enter;

public class EnterDAO implements IEnterDAO{
private static Connection conn = DBCP.getConnection();
	
	public boolean Submit(String Enter,String type,String scope,String start_time){
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "insert into myenterprise values(?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Enter);
			pstmt.setString(2, type);
			pstmt.setString(3, scope);
			pstmt.setString(4, start_time);
			if(pstmt.executeUpdate()>0){
				flag=true;
			}else{
				flag=false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}

}
