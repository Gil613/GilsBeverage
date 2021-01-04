package com.gil.shop.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gil.shop.scrap.vo.ScrapVO;
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
	// 로그인구현
	@Override
	public String loginUser(UserVO vo) {
		return dao.loginUser(vo);
	}
	// 회원정보수정
	@Override
	public UserVO editUser(UserVO vo) {
		return dao.editUser(vo);
	}
	// 회원정보수정완료
	@Override
	public void editUserOk(UserVO vo) {
		dao.editUserOk(vo);
	}
	// 회원탈퇴
	@Override
	public void deleteUser(UserVO vo) {
		dao.deleteUser(vo);
	}
	// 회원목록보기
	@Override
	public List<UserVO> memberList(UserVO vo) {
		return dao.memberList(vo);
	}
	// 회원삭제하기
	@Override
	public void memberDelete(UserVO vo) {
		dao.memberDelete(vo);
	}
	// 스크랩하기
	@Override
	public void scrapInsert(ScrapVO vo) {
		dao.scrapInsert(vo);
	}
	// 스크랩목록보기
	@Override
	public List<ScrapVO> scrapList(ScrapVO vo) {
		return dao.scrapList(vo);
	}
	// 스크랩삭제하기
	@Override
	public void scrapDelete(ScrapVO vo) {
		dao.scrapDelete(vo);
	}

}
