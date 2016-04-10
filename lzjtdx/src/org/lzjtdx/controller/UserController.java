package org.lzjtdx.controller;

import org.lzjtdx.domain.User;
import org.lzjtdx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/add")
	public String addUser(){
		User u = new User();
		u.setLoginName("张三");
		u.setPassword("12345");
		u.setAge(15);
		u.setEmail("www@hwadee.com");
		userService.addUser(u);
		System.out.println("添加成功!");
		return "user/list";
	}

}
