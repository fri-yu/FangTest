package com.fang.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Service;

import com.fang.bean.LoginEnterIn;

@Service
public class LoginService {
	public void login(HttpServletRequest request, HttpServletResponse response,
			LoginEnterIn model) {

		Cookie cookie = null;
		try {
			cookie = new Cookie("userName", URLEncoder.encode(model.getEmail(),
					"UTF-8"));
			response.addCookie(cookie);
			request.getSession().setAttribute("userName",
					URLEncoder.encode(model.getEmail(), "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
