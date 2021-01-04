package com.gil.pre.search.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gil.shop.board.service.BoardService;
import com.gil.shop.board.vo.BoardVO;
import com.gil.shop.product.vo.ProductVO;
import com.gil.shop.user.vo.UserVO;


@Controller
public class SearchController {

	@Autowired
	private BoardService bs;
	
	@RequestMapping(value="/searchList.do")
	public String searchList(BoardVO bvo, UserVO uvo, ProductVO pvo, Model model) {
		model.addAttribute("bns", bs.searchNoticeList(bvo));
		model.addAttribute("bcs", bs.searchCocktailList(bvo));
		model.addAttribute("bCs", bs.searchCommunityList(bvo));
		return "search_list.jsp";
	}
}
