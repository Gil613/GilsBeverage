package com.gil.pre.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gil.shop.scrap.vo.ScrapVO;
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
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
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
	// 로그아웃
	@RequestMapping(value = "/logout.do")
	public String logout_ok(UserVO vo, HttpSession session) {
		session.invalidate();
		return "home.jsp";
	}
	// 회원정보수정
	@RequestMapping(value = "/editUser.do")
	public String editUser(UserVO vo, HttpSession session , Model model) {
		vo.setId((String)session.getAttribute("id"));
		model.addAttribute("user", s.editUser(vo));
		return "editUser.jsp";
	}
	// 회원정보수정완료
	@RequestMapping(value = "/editUserOk.do", method = RequestMethod.POST)
	public String editUserOK(UserVO vo) {
		s.editUserOk(vo);
		return "editUserOk.jsp";
	}
	// 회원탈퇴
	@RequestMapping(value = "/deleteUser.do")
	public String deleteUser(UserVO vo, HttpSession session) {
		s.deleteUser(vo);
		session.invalidate();
		return "deleteUser.jsp";
	}
	//회원목록보기
	@RequestMapping(value = "/member_list.do")
	public String member_list(UserVO vo, Model model) {
		model.addAttribute("member", s.memberList(vo));
		return "member_list.jsp";
	}
	// 회원삭제
	@RequestMapping(value = "/memberDelete.do")
	public String memberDelete(UserVO vo) {
		s.memberDelete(vo);
		return "member_list.do";
	}
	// 스크랩하기
	@RequestMapping(value = "/scrap.do")
	public String scrapInsert(ScrapVO vo, HttpSession session) {
		vo.setId((String)session.getAttribute("id"));
		s.scrapInsert(vo);
		return "home.jsp";
	}
	
	
}
