package com.gil.shop.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gil.shop.product.dao.ProductDao;
import com.gil.shop.product.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao dao;
	
	@Override
	public void pinsert(ProductVO vo) {
		dao.pinsert(vo);
	}

	@Override
	public List<ProductVO> whisky(ProductVO vo) {
		
		return dao.whisky(vo);
	}

	@Override
	public List<ProductVO> vodka(ProductVO vo) {
		
		return dao.vodka(vo);
	}

	@Override
	public List<ProductVO> brandy(ProductVO vo) {
		
		return dao.brandy(vo);
	}

	@Override
	public List<ProductVO> tequila(ProductVO vo) {
		
		return dao.tequila(vo);
	}

	@Override
	public List<ProductVO> gin(ProductVO vo) {
		
		return dao.gin(vo);
	}

	@Override
	public List<ProductVO> lw(ProductVO vo) {
		
		return dao.lw(vo);
	}

	@Override
	public ProductVO selectOne(ProductVO vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public void pupdate(ProductVO vo) {
		
		dao.pupdate(vo);
		
	}

	@Override
	public ProductVO selectForUpdate(ProductVO vo) {
		
		return dao.selectForUpdate(vo);
	}

	@Override
	public void pdelete(ProductVO vo) {
		dao.pdelete(vo);
	}

	@Override
	public List<ProductVO> searchProductList(ProductVO vo) {
		
		return dao.searchProductList(vo);
	}


}
