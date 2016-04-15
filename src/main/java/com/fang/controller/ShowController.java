package com.fang.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fang.bean.User;
import com.fang.service.IUserService;
import com.fang.service.MyService;

@Controller
@RequestMapping("/user")
public class ShowController {
	// @Resource
	// private IUserService userService;
	@Resource
	private MyService myService;

	@RequestMapping("/showUser.do")
	public String toIndex(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		// User user = this.userService.getUserById(userId);
		User user = this.myService.getList().get(0);
		user.setUserName(user.getUserName()+"----");
		model.addAttribute("user", user);
		return "show/showUser";
	}
}
