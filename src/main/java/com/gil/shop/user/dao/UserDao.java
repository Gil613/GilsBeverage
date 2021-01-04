package com.gil.shop.user.dao;

import java.util.List;

import com.gil.shop.scrap.vo.ScrapVO;
import com.gil.shop.user.vo.UserVO;

public interface UserDao {
	void insertUser(UserVO vo);
	String loginUser(UserVO vo);
	UserVO editUser(UserVO vo);
	void editUserOk(UserVO vo);
	void deleteUser(UserVO vo);
	List<UserVO> memberList(UserVO vo);
	void memberDelete(UserVO vo);
	void scrapInsert(ScrapVO vo);
	List<ScrapVO> scrapList(ScrapVO vo);
	void scrapDelete(ScrapVO vo);


}
