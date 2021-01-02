package com.gil.shop.board.service;

import java.util.List;

import com.gil.shop.board.dao.BoardNoticeDao;
import com.gil.shop.board.vo.BoardVO;

public interface BoardNoticeService {
	void noticeInsert(BoardVO vo);
	void noticeUpdate(BoardVO vo);
	void noticeDelete(BoardVO vo);
	int selectMaxidx();
	List<BoardVO> selectNotice(BoardVO vo);
	BoardVO selectOneForNotice(BoardVO vo);
	BoardVO selectOneForUpdate(BoardVO vo);
}
