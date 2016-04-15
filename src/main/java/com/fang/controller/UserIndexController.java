package com.fang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/UserIndex")
public class UserIndexController {

	@RequestMapping(value = "/DefaultIndex.do")
	public String defaultIndex() {
		return "sys/Index_Default_View";
	}
}
