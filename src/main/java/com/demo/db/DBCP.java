package com.demo.db;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSourceFactory;

public class DBCP {
	private static Properties pro = new Properties();
	private static Connection conn = null;
	static {
		String inipath = DBCP.class.getClassLoader().getResource("").getPath();
		try {
			pro.load(new FileInputStream(new File(inipath+"dbcp.ini")));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnection() {
		DataSource ds = null;
		try {
			ds = BasicDataSourceFactory.createDataSource(pro);
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			 
		return conn;
	}
}
