package com.gil.pre.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gil.shop.user.service.UserService;
import com.gil.shop.user.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService s;
	// 회원가입
	@RequestMapping(value = "/join.do")
	public String insertUser(UserVO vo) {
		s.insertUser(vo);
		return "home.jsp";
	}
}
