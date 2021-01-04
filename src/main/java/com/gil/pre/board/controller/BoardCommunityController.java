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
import com.gil.shop.user.vo.UserVO;

@Controller
public class BoardCommunityController {
	
	@Autowired
	private BoardService s;
	
	//커뮤니티 글쓰기
	@RequestMapping(value="/insertCommunity.do")
	public String insertCommunity(BoardVO bvo,UserVO uvo, HttpServletRequest request, Model model, HttpSession session) throws IOException{
		String save="/community/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = bvo.getUploadFile();
		
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
					bvo.setFilename(fname);
			}else {
				uploadfile.transferTo(new File(RealPath  + fileName));
				bvo.setFilename(fileName);
			}
			}else{
				bvo.setFilename("space.jpg");
			}
		uvo.setId((String)session.getAttribute("id"));
		s.boardInsert(bvo);
		int idx = s.selectMaxidx();
		bvo.setIdx(idx);
		model.addAttribute("c", s.selectOneBoard(bvo));
		return "communityList.do";
	}
	
	//커뮤니티 글 목록보기
	@RequestMapping(value="/communityList.do")
	public String selectCommunity(BoardVO vo, Model model) {
		model.addAttribute("community",s.selectCommunity(vo));
		return "community_list.jsp";
	}
	
	//커뮤니티 글 조회하기
	@RequestMapping(value="/community_content.do")
	public String selectCommunityContent(BoardVO vo,UserVO uvo, Model model, HttpSession session) {
		uvo.setId((String)session.getAttribute("id"));
		model.addAttribute("c", s.selectOneBoard(vo));
		return "community_content.jsp";
	}
	
	//커뮤니티 수정페이지 보기
	@RequestMapping(value="/modifyCommunity.do")
	public String modifyCommunity(BoardVO vo, Model model) {
		model.addAttribute("c", s.selectOneBoard(vo));
		return "community_modify.jsp";
	}
	
	//커뮤니티 수정하기
	@RequestMapping(value="/updateCommunity.do", method=RequestMethod.POST)
	public String pUpdate(BoardVO vo, HttpServletRequest request) throws IOException{
		
		BoardVO fn =s.selectOneForUpdate(vo);
		
		
		String save="/community/";
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
		return "communityList.do";
	}
	
	//커뮤니티 삭제하기
	@RequestMapping(value="/deleteCommunity.do")
	public String pDelete(BoardVO vo, HttpServletRequest request) {
		
		BoardVO fn =s.selectOneForUpdate(vo);
		
		
		String save="/community/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		File f = new File(RealPath + fn.getFilename());
		f.delete();
		
		s.boardDelete(vo);
		return "communityList.do";
	}
	
}
