package com.gil.shop.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.board.vo.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public void noticeInsert(BoardVO vo) {
		sst.insert("BoardDAO.insertNotice", vo);		
	}

	@Override
	public BoardDao selectId() {
		return sst.selectOne("BoardDAO.selectId");
	}
	
}
