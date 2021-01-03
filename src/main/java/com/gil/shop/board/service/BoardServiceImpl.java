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
	public void boardInsert(BoardVO vo) {
		dao.boardInsert(vo);
		
	}

	@Override
	public int selectMaxidx() {
		return dao.selectMaxidx();
	}

	@Override
	public List<BoardVO> selectBoard(BoardVO vo) {
		
		return dao.selectBoard(vo);
	}

	@Override
	public BoardVO selectOneBoard(BoardVO vo) {
		
		return dao.selectOneBoard(vo);
	}

	@Override
	public BoardVO selectOneForUpdate(BoardVO vo) {
		
		return dao.selectOneForUpdate(vo);
	}

	@Override
	public void boardUpdate(BoardVO vo) {
		dao.boardUpdate(vo);
		
	}

	@Override
	public void boardDelete(BoardVO vo) {
		dao.boardDelete(vo);
		
	}

	@Override
	public List<BoardVO> selectCocktail(BoardVO vo) {
		
		return dao.selectCocktail(vo);
	}

}
