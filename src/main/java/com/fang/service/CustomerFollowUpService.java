package com.fang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fang.dao.UserAndProjMainTableDao;

@Service
public class CustomerFollowUpService {

	@Autowired
	private UserAndProjMainTableDao dao;

	public List<String> getData() {
		return dao.getList();
	}
}
