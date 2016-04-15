package com.fang.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fang.bean.User;
import com.fang.dao.UserDao;
import com.fang.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	@Resource
	private UserDao userDao;

	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		System.out.println("userDao---------------" + userDao);
		System.out.println(userDao.getUsers());
		return userDao.getUsers().get(0);
	}

}
