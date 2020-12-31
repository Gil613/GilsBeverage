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
import com.gil.shop.product.vo.ProductVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService s;
	
	@RequestMapping(value="/insertNotice.do")
	public String insertNotice(BoardVO vo, HttpServletRequest request, Model model, HttpSession session) throws IOException{
		String save="/board/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = vo.getUploadFile();

		
		long time = System.currentTimeMillis();
		SimpleDateFormat daytime = new SimpleDateFormat("HH-mm-ss");
		String time1 = daytime.format(time);
		
		
		String originfileName="";
		String onlyfileName="";
		String fileName="";
		String extension="";
		if(!uploadfile.isEmpty()) {
			fileName = uploadfile.getOriginalFilename();
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
			}else {
				vo.setFilename("trash");
			}
		session.setAttribute("id", vo.getId());
		s.noticeInsert(vo);
		System.out.println("idx 최댓값 들어가기 전");
		int idx = s.selectMaxidx();
		vo.setIdx(idx);
		System.out.println("MaxIdx : " + idx);
		model.addAttribute("nb", s.selectOneForNotice(vo));
		System.out.println("모델 값 받아옴");
		return "notice_content.jsp";
	}
	
	@RequestMapping(value="/noticeList.do")
	public String selectNotice(BoardVO vo, Model model) {
		model.addAttribute("notice", s.selectNotice(vo));
		
		return "notice_list.jsp";
	}
	
	@RequestMapping(value="/notice_content.do")
	public String selectNoticeContent(BoardVO vo, Model model) {
		model.addAttribute("nb", s.selectOneForNotice(vo));
		return "notice_content.jsp";
	}
	
	@RequestMapping(value="/modifyNotice.do")
	public String modifyNotice(BoardVO vo, Model model) {
		model.addAttribute("nb", s.selectOneForNotice(vo));
		return "notice_modify.jsp";
	}
	
	@RequestMapping(value="/updateNotice.do", method=RequestMethod.POST)
	public String pUpdate(BoardVO vo, HttpServletRequest request) throws IOException{
		
		BoardVO fn =s.selectOneForUpdate(vo);
		
		
		String save="/board/";
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
		s.noticeUpdate(vo);
		return "noticeList.do";
	}
	
	@RequestMapping(value="/deleteNotice.do")
	public String pDelete(BoardVO vo, HttpServletRequest request) {
		
		BoardVO fn =s.selectOneForUpdate(vo);
		
		
		String save="/board/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		File f = new File(RealPath + fn.getFilename());
		f.delete();
		
		s.noticeDelete(vo);
		return "noticeList.do";
	}
	
}
