package com.gil.shop.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gil.shop.user.dao.UserDao;
import com.gil.shop.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;
	//회원가입
	@Override
	public void insertUser(UserVO vo) {
		dao.insertUser(vo);
	}

}
