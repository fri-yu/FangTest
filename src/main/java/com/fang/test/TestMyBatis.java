package com.fang.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.fang.bean.User;
import com.fang.service.IUserService;
import com.fang.service.MyService;

@RunWith(SpringJUnit4ClassRunner.class)
// 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class TestMyBatis {
//	private static Logger logger = Logger.getLogger(TestMyBatis.class);
//	@Resource
//	private IUserService userService = null;
//
//	@Resource
//	private MyService myServicess = null;
//
//	@Test
//	public void test1() {
//		System.out.println("myService-------------------" + myServicess);
//		for (User u : myServicess.getList()) {
//			System.out.println("直接拿service" + u);
//		}
//		User user = userService.getUserById(1);
//
//		System.out.println("user--from dao-------------------" + user);
//		// System.out.println(user.getUserName());
//		// logger.info("值："+user.getUserName());
//		logger.info(JSON.toJSONString(user));
//	}
}
