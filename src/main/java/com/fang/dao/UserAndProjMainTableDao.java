package com.fang.dao;

import java.util.List;

import com.fang.bean.CustomerFollowUpListModel;


public interface UserAndProjMainTableDao {

	public List<String> getData();
	
	public List<CustomerFollowUpListModel> getList();
}
