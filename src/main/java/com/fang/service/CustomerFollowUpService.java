package com.fang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fang.bean.CustomerFollowUpListModel;
import com.fang.dao.UserAndProjMainTableDao;

@Service
public class CustomerFollowUpService {

	@Autowired
	private UserAndProjMainTableDao dao;

	public List<String> getData() {
		return dao.getData();
	}
	public List<CustomerFollowUpListModel> getList() {
		return dao.getList();
	}
}
