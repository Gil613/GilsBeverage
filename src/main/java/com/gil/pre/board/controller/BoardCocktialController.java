package com.gil.pre.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.gil.shop.board.service.BoardService;
import com.gil.shop.board.vo.BoardVO;

@Controller
public class BoardCocktialController {
	
	@Autowired
	private BoardService s;
	//칵테일 글쓰기
	@RequestMapping(value="/insertCocktail.do")
	public String insertNotice(BoardVO vo, HttpServletRequest request, Model model, HttpSession session) throws IOException{
		String save="/cocktail/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = vo.getUploadFile();
		
		long time = System.currentTimeMillis();
		SimpleDateFormat daytime = new SimpleDateFormat("HH-mm-ss");
		String time1 = daytime.format(time);
		
		
		String originfileName="";
		String onlyfileName="";
		String fileName=uploadfile.getOriginalFilename();
		String extension="";
		if(!uploadfile.isEmpty()) {
			File f = new File(RealPath + fileName);
			if(f.exists()) {
				originfileName = uploadfile.getOriginalFilename();
				onlyfileName=originfileName.substring(0,originfileName.indexOf("."));
				extension = originfileName.substring(originfileName.indexOf("."));
				fileName = onlyfileName + "_" + time1 + extension;
				uploadfile.transferTo(new File(RealPath + fileName));
				
					String fname = fileName;
					vo.setFilename(fname);
			}else {
				uploadfile.transferTo(new File(RealPath  + fileName));
				vo.setFilename(fileName);
			}
			}else{
				vo.setFilename("space.jpg");
			}
		session.setAttribute("id", vo.getId());
		s.boardInsert(vo);
		int idx = s.selectMaxidx();
		vo.setIdx(idx);
		model.addAttribute("c", s.selectOneBoard(vo));
		return "cocktail_content.jsp";
	}
	
	//칵테일 글 목록보기
	@RequestMapping(value="/cocktailList.do")
	public String selectNotice(BoardVO vo, Model model) {
		model.addAttribute("cocktail", s.selectCocktail(vo));
		return "cocktail_list.jsp";
	}
	
	//칵테일 글 조회하기
	@RequestMapping(value="/cocktail_content.do")
	public String selectNoticeContent(BoardVO vo, Model model) {
		model.addAttribute("c", s.selectOneBoard(vo));
		return "cocktail_content.jsp";
	}
	
	//칵테일 수정페이지 보기
	@RequestMapping(value="/modifyCocktail.do")
	public String modifyNotice(BoardVO vo, Model model) {
		model.addAttribute("c", s.selectOneBoard(vo));
		return "cocktail_modify.jsp";
	}
	
	//칵테일 수정하기
	@RequestMapping(value="/updateCocktail.do", method=RequestMethod.POST)
	public String cocktailUpdate(BoardVO vo, HttpServletRequest request) throws IOException{
		
		BoardVO fn =s.selectOneForUpdate(vo);
		
		
		String save="/cocktail/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = vo.getUploadFile();

		
		long time = System.currentTimeMillis();
		SimpleDateFormat daytime = new SimpleDateFormat("HH-mm-ss");
		String time1 = daytime.format(time);
		
		
		
		if(!uploadfile.isEmpty()) {
			File f = new File(RealPath + fn.getFilename());
			f.delete();
			String fileName = uploadfile.getOriginalFilename();			
			if(new File(RealPath + fileName).exists()) {
				String originfileName = uploadfile.getOriginalFilename();
				String onlyfileName=originfileName.substring(0,originfileName.indexOf("."));
				String extension = originfileName.substring(originfileName.indexOf("."));
				fileName = onlyfileName + "_" + time1 + extension;
				uploadfile.transferTo(new File(RealPath + fileName));
				vo.setFilename(fileName);
			}else {
				uploadfile.transferTo(new File(RealPath  + fileName));
				vo.setFilename(fileName);
			}
		}else {
			vo.setFilename(fn.getFilename());
		} 
		s.boardUpdate(vo);
		return "cocktailList.do";
	}
	
	//칵테일 삭제하기
	@RequestMapping(value="/deleteCocktail.do")
	public String cocktailDelete(BoardVO vo, HttpServletRequest request) {
		
		BoardVO fn =s.selectOneForUpdate(vo);
		
		
		String save="/cocktail/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		File f = new File(RealPath + fn.getFilename());
		f.delete();
		
		s.boardDelete(vo);
		return "cocktailList.do";
	}
	
}
