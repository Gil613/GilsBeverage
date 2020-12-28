package com.gil.shop.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.product.vo.ProductVO;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public void pinsert(ProductVO vo) {
		sst.insert("ProductDAO.pinsert", vo);
	}

	@Override
	public List<ProductVO> whisky(ProductVO vo) {
		
		return sst.selectList("ProductDAO.whisky", vo.getPtype());
	}

	@Override
	public List<ProductVO> vodka(ProductVO vo) {
		
		return sst.selectList("ProductDAO.vodka", vo.getPtype());
	}

	@Override
	public List<ProductVO> brandy(ProductVO vo) {
		
		return sst.selectList("ProductDAO.brandy", vo.getPtype());
	}

	@Override
	public List<ProductVO> tequila(ProductVO vo) {
		
		return sst.selectList("ProductDAO.tequila", vo.getPtype());
	}

	@Override
	public List<ProductVO> gin(ProductVO vo) {
		
		return sst.selectList("ProductDAO.gin", vo.getPtype());
	}

	@Override
	public List<ProductVO> lw(ProductVO vo) {
		
		return sst.selectList("ProductDAO.lw", vo.getPtype());
	}

	@Override
	public ProductVO selectOne(ProductVO vo) {
		
		return sst.selectOne("ProductDAO.selectOne", vo.getIdx());
	}

	@Override
	public void pupdate(ProductVO vo) {
		sst.update("ProductDAO.update", vo);
		
	}

	@Override
	public ProductVO selectForUpdate(ProductVO vo) {
		
		return sst.selectOne("ProductDAO.selectForUpdate", vo);
	}

	@Override
	public void pdelete(ProductVO vo) {
		sst.delete("ProductDAO.delete", vo);
		
	}

}
