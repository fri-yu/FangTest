package com.fang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = { "/CustomerFollowUp" })
public class CustomerFollowUpController {
	@RequestMapping("/FollowUpList.do")
	public String FollowUpList() {
		return "/customer/FollowUpList";
	}
}
