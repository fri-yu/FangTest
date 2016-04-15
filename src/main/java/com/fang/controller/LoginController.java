package com.fang.controller;

import java.awt.List;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fang.bean.LoginEnterIn;
import com.fang.common.Identity;
import com.fang.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/login.do")
	public String Login(HttpServletRequest request, HttpServletResponse response) {
		// System.out.println("hash1:" + request.hashCode());
		// System.out.println("response:" + response.hashCode());
		Identity.getUser();

		return "login";
	}

	@RequestMapping(value = "/enter.do")
	@ResponseBody
	public String Enter(HttpServletRequest request,
			HttpServletResponse response, LoginEnterIn model) {
		loginService.login(request, response, model);
		// System.out.println("111111111111");
		System.out.println("enter.do" + model);
		System.out.println("enter.do" + model.getEmail());
		System.out.println("enter.do" + model.getPassword());
		System.out.println("enter.do" + model.getPhone());

		return "{\"success\":1}";
	}
}
