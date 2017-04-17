package com.demo.dao;

import com.demo.vo.Enter;

public interface IEnterDAO {
	public boolean Submit(String Enter,String type,String scope,String start_time);
}
