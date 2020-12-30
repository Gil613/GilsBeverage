package com.gil.pre.user.controller;

import javax.servlet.http.HttpSession;

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
	// 로그인구현
	@RequestMapping(value = "/login.do")
	public String loginUser(UserVO vo, HttpSession session) {
		String result = s.loginUser(vo);
		System.out.println(result);
		if(result.equals("success")) {
			session.setAttribute("id", vo.getId());
			return "home.jsp";
		}else {
			return "login.jsp";
		}
	}
}
