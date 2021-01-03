package com.gil.shop.user.service;

import java.util.List;

import com.gil.shop.user.vo.UserVO;

public interface UserService {
	void insertUser(UserVO vo);
	String loginUser(UserVO vo);
	UserVO editUser(UserVO vo);
	void editUserOk(UserVO vo);
	void deleteUser(UserVO vo);
	List<UserVO> memberList(UserVO vo);
	void memberDelete(UserVO vo);
}
