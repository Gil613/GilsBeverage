package com.gil.shop.user.dao;

import com.gil.shop.user.vo.UserVO;

public interface UserDao {
	void insertUser(UserVO vo);
	String loginUser(UserVO vo);
}
