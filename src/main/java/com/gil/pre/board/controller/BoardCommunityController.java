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
		//파일 경로 정하기
		String save="/community/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = bvo.getUploadFile();
		//파일 이름에 저장할 날짜 포맷
		long time = System.currentTimeMillis();
		SimpleDateFormat daytime = new SimpleDateFormat("HH-mm-ss");
		String time1 = daytime.format(time);
		
		String originfileName="";
		String onlyfileName="";
		String fileName=uploadfile.getOriginalFilename();
		String extension="";
		
		//업로드한 파일이 비어있지 않으면 True
		if(!uploadfile.isEmpty()) {
			File f = new File(RealPath + fileName);
			//데이터에 파일이름이 중복되면 True
			if(f.exists()) {
				//업로드 한 파일에 시간 정보를 입력
				originfileName = uploadfile.getOriginalFilename();
				onlyfileName=originfileName.substring(0,originfileName.indexOf("."));
				extension = originfileName.substring(originfileName.indexOf("."));
				fileName = onlyfileName + "_" + time1 + extension;
				uploadfile.transferTo(new File(RealPath + fileName));
				
					String fname = fileName;
					bvo.setFilename(fname);
				//그게 아니면 원래 이름으로 파일이름 저장
			}else {
				uploadfile.transferTo(new File(RealPath  + fileName));
				bvo.setFilename(fileName);
			}
			//아예 파일이 없으면
			}else{
				bvo.setFilename("space.jpg");
			}
		//로그인 된 아이디 값을 준비 데이터에 저장.
		uvo.setId((String)session.getAttribute("id"));
		//데이터 Insert
		s.boardInsert(bvo);
		//글을 등록한 idx값을 찾아 등록 결과 페이지로 이동.
		int idx = s.selectMaxidx();
		bvo.setIdx(idx);
		model.addAttribute("c", s.selectOneBoard(bvo));
		return "community_content.jsp";
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
		//기존에 등록되어 있던 파일이름 받아오기.
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
			f.delete();//기존 파일이 존재하면 삭제!
			String fileName = uploadfile.getOriginalFilename();
			//파일 이름 중복 방지
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
			//업로드 된 파일이 없으면 기존의 존재하는 파일이름으로 저장.
			vo.setFilename(fn.getFilename());
		} 
		s.boardUpdate(vo);
		return "communityList.do";
	}
	
	//커뮤니티 삭제하기
	@RequestMapping(value="/deleteCommunity.do")
	public String pDelete(BoardVO vo, HttpServletRequest request) {
		//데이터에 저장된 파일이름을 선택한다.
		BoardVO fn =s.selectOneForUpdate(vo);
		
		String save="/community/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		//해당 경로의 파일 이름을 삭제.
		File f = new File(RealPath + fn.getFilename());
		f.delete();
		
		s.boardDelete(vo);
		return "communityList.do";
	}
	
}
