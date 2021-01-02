package com.gil.shop.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.board.vo.BoardVO;

@Repository
public class BoardNoticeDaoImpl implements BoardNoticeDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public void noticeInsert(BoardVO vo) {
		sst.insert("BoardDAO.insertNotice", vo);		
	}

	@Override
	public int selectMaxidx() {
		return sst.selectOne("BoardDAO.selectMaxidx");
	}

	@Override
	public List<BoardVO> selectNotice(BoardVO vo) {
		
		return sst.selectList("BoardDAO.selectNotice", vo);
	}

	@Override
	public BoardVO selectOneForNotice(BoardVO vo) {
		
		return sst.selectOne("BoardDAO.selectNoticeIdx", vo);
	}

	@Override
	public BoardVO selectOneForUpdate(BoardVO vo) {
		
		return sst.selectOne("BoardDAO.selectForUpdate", vo);
	}

	@Override
	public void noticeUpdate(BoardVO vo) {
		sst.update("BoardDAO.updateNotice", vo);
		
	}

	@Override
	public void noticeDelete(BoardVO vo) {
		sst.delete("BoardDAO.deleteNotice", vo);
		
	}
	
}
