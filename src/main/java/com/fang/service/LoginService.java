package com.fang.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Service;

import com.fang.bean.LoginEnterIn;

@Service
public class LoginService {
	public void login(HttpServletRequest request, HttpServletResponse response,
			LoginEnterIn model) {

		Cookie cookie = new Cookie("userName", model.getEmail());
		response.addCookie(cookie);
		request.getSession().setAttribute("userName", model.getEmail());
	}
}
