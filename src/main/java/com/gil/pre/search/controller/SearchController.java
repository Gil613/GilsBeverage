package com.gil.pre.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gil.shop.board.service.BoardService;
import com.gil.shop.board.vo.BoardVO;
import com.gil.shop.product.service.ProductService;
import com.gil.shop.product.vo.ProductVO;


@Controller
public class SearchController {

	@Autowired
	private BoardService bs;
	@Autowired
	private ProductService ps;
	
	@RequestMapping(value="/searchList.do")
	public String searchList(BoardVO bvo, ProductVO pvo, Model model) {
		model.addAttribute("bns", bs.searchNoticeList(bvo));
		model.addAttribute("bcs", bs.searchCocktailList(bvo));
		model.addAttribute("bCs", bs.searchCommunityList(bvo));
		model.addAttribute("ps", ps.searchProductList(pvo));
		return "search_list.jsp";
	}
}
