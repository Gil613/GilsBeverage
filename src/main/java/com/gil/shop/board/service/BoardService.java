package com.gil.shop.board.service;

import com.gil.shop.board.dao.BoardDao;
import com.gil.shop.board.vo.BoardVO;

public interface BoardService {
	void noticeInsert(BoardVO vo);
	BoardDao selectId();
}
