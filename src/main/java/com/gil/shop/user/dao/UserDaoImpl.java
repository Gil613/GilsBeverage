package com.gil.shop.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.user.vo.UserVO;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public void insertUser(UserVO vo) {
		sst.insert("UserDAO.insertUser", vo);
	}
	
}
