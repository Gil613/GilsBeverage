package com.gil.shop.board.dao;

import com.gil.shop.board.vo.BoardVO;

public interface BoardDao {
	void noticeInsert(BoardVO vo);
	BoardDao selectId();
}