package com.gil.shop.board.dao;

import java.util.List;

import com.gil.shop.board.vo.BoardVO;

public interface BoardDao {
	void noticeInsert(BoardVO vo);
	BoardVO selectId();
	List<BoardVO> selectNotice(BoardVO vo);
}