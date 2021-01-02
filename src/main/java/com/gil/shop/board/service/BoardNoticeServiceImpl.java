package com.gil.shop.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gil.shop.board.dao.BoardNoticeDao;
import com.gil.shop.board.vo.BoardVO;

@Service
public class BoardNoticeServiceImpl implements BoardNoticeService{

	@Autowired
	private BoardNoticeDao dao;
	
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

	@Override
	public BoardVO selectOneForUpdate(BoardVO vo) {
		
		return dao.selectOneForUpdate(vo);
	}

	@Override
	public void noticeUpdate(BoardVO vo) {
		dao.noticeUpdate(vo);
		
	}

	@Override
	public void noticeDelete(BoardVO vo) {
		dao.noticeDelete(vo);
		
	}

}
