package com.gil.shop.board.service;

import java.util.List;

import com.gil.shop.board.dao.BoardDao;
import com.gil.shop.board.vo.BoardVO;

public interface BoardService {
	void boardInsert(BoardVO vo);
	void boardUpdate(BoardVO vo);
	void boardDelete(BoardVO vo);
	int selectMaxidx();
	List<BoardVO> selectBoard(BoardVO vo);
	BoardVO selectOneBoard(BoardVO vo);
	BoardVO selectOneForUpdate(BoardVO vo);
	List<BoardVO> selectCocktail(BoardVO vo);
	List<BoardVO> selectCommunity(BoardVO vo);
}
