package com.gil.shop.board.dao;

import java.util.List;

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
	public BoardVO selectId() {
		return sst.selectOne("BoardDAO.selectId");
	}

	@Override
	public List<BoardVO> selectNotice(BoardVO vo) {
		
		return sst.selectList("BoardDAO.selectNotice", vo);
	}
	
}
