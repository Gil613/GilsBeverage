package com.gil.shop.board.dao;

import java.util.List;

import com.gil.shop.board.vo.BoardVO;

public interface BoardDao {
	void noticeInsert(BoardVO vo);
	int selectMaxidx();
	List<BoardVO> selectNotice(BoardVO vo);
	BoardVO selectOneForNotice(BoardVO vo);
}