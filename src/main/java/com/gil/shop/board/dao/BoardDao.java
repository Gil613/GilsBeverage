package com.gil.shop.board.dao;

import java.util.List;

import com.gil.shop.board.vo.BoardVO;

public interface BoardDao {
	void boardInsert(BoardVO vo);
	void boardUpdate(BoardVO vo);
	void boardDelete(BoardVO vo);
	int selectMaxidx();
	List<BoardVO> selectBoard(BoardVO vo);
	BoardVO selectOneBoard(BoardVO vo);
	BoardVO selectOneForUpdate(BoardVO vo);	
	List<BoardVO> selectCocktail(BoardVO vo);
	List<BoardVO> selectCommunity(BoardVO vo);
	List<BoardVO> searchNoticeList(BoardVO vo);
	List<BoardVO> searchCocktailList(BoardVO vo);
	List<BoardVO> searchCommunityList(BoardVO vo);
}