package com.gil.shop.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gil.shop.board.dao.BoardDao;
import com.gil.shop.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao dao;
	
	@Override
	public void noticeInsert(BoardVO vo) {
		dao.noticeInsert(vo);
		
	}

	@Override
	public int selectMaxidx() {
		return dao.selectMaxidx();
	}

	@Override
	public List<BoardVO> selectNotice(BoardVO vo) {
		
		return dao.selectNotice(vo);
	}

	@Override
	public BoardVO selectOneForNotice(BoardVO vo) {
		
		return dao.selectOneForNotice(vo);
	}

}
