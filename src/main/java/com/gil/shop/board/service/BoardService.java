package com.gil.shop.board.service;

import java.util.List;

import com.gil.shop.board.dao.BoardDao;
import com.gil.shop.board.vo.BoardVO;

public interface BoardService {
	void noticeInsert(BoardVO vo);
	BoardVO selectId();
	List<BoardVO> selectNotice(BoardVO vo);
}
