package com.gil.shop.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.board.vo.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public void boardInsert(BoardVO vo) {
		sst.insert("BoardDAO.insertNotice", vo);		
	}

	@Override
	public int selectMaxidx() {
		return sst.selectOne("BoardDAO.selectMaxidx");
	}

	@Override
	public List<BoardVO> selectBoard(BoardVO vo) {
		
		return sst.selectList("BoardDAO.selectNotice", vo);
	}

	@Override
	public BoardVO selectOneBoard(BoardVO vo) {
		
		return sst.selectOne("BoardDAO.selectNoticeIdx", vo);
	}

	@Override
	public BoardVO selectOneForUpdate(BoardVO vo) {
		
		return sst.selectOne("BoardDAO.selectForUpdate", vo);
	}

	@Override
	public void boardUpdate(BoardVO vo) {
		sst.update("BoardDAO.updateNotice", vo);
		
	}

	@Override
	public void boardDelete(BoardVO vo) {
		sst.delete("BoardDAO.deleteNotice", vo);
	}

	@Override
	public List<BoardVO> selectCocktail(BoardVO vo) {
		return sst.selectList("BoardDAO.selectCocktail", vo);
	}

	@Override
	public List<BoardVO> selectCommunity(BoardVO vo) {
		return sst.selectList("BoardDAO.selectCommunity", vo);
	}
	
}
