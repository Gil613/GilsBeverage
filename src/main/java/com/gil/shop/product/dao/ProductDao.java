package com.gil.shop.product.dao;

import java.util.List;

import com.gil.shop.board.vo.BoardVO;
import com.gil.shop.product.vo.ProductVO;

public interface ProductDao {
	void pinsert(ProductVO vo);
	void pupdate(ProductVO vo);
	void pdelete(ProductVO vo);
	List<ProductVO> vodka(ProductVO vo);
	List<ProductVO> whisky(ProductVO vo);
	List<ProductVO> brandy(ProductVO vo);
	List<ProductVO> tequila(ProductVO vo);
	List<ProductVO> gin(ProductVO vo);
	List<ProductVO> lw(ProductVO vo);
	ProductVO selectOne(ProductVO vo);
	ProductVO selectForUpdate(ProductVO vo);
	List<ProductVO> searchProductList(ProductVO vo);
}
