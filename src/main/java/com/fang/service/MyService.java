package com.fang.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fang.bean.User;

@Service("myService")
public interface MyService {
	public List<User> getList();
}
