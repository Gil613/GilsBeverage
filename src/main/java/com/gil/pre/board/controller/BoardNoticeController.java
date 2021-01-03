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
public class BoardNoticeController {

	@Autowired
	private BoardService s;

	// 공지 글쓰기
	@RequestMapping(value = "/insertNotice.do")
	public String insertNotice(BoardVO vo, HttpServletRequest request, Model model, HttpSession session)
			throws IOException {
		String save = "/notice/";
		ServletContext context = request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = vo.getUploadFile();

		long time = System.currentTimeMillis();
		SimpleDateFormat daytime = new SimpleDateFormat("HH-mm-ss");
		String time1 = daytime.format(time);

		String originfileName = "";
		String onlyfileName = "";
		String fileName = uploadfile.getOriginalFilename();
		String extension = "";
		if (!uploadfile.isEmpty()) {
			File f = new File(RealPath + fileName);
			if (f.exists()) {
				originfileName = uploadfile.getOriginalFilename();
				onlyfileName = originfileName.substring(0, originfileName.indexOf("."));
				extension = originfileName.substring(originfileName.indexOf("."));
				fileName = onlyfileName + "_" + time1 + extension;
				uploadfile.transferTo(new File(RealPath + fileName));

				String fname = fileName;
				vo.setFilename(fname);
			} else {
				uploadfile.transferTo(new File(RealPath + fileName));
				vo.setFilename(fileName);
			}
		} else {
			// vo.setFilename(null);
			vo.setFilename("space.jpg");
		}
		session.setAttribute("id", vo.getId());
		s.boardInsert(vo);
		int idx = s.selectMaxidx();
		vo.setIdx(idx);
		model.addAttribute("nb", s.selectOneBoard(vo));
		return "notice_content.jsp";
	}
<<<<<<< HEAD

	// 공지 글 목록보기
	@RequestMapping(value = "/noticeList.do")
	public String selectNotice(BoardVO vo, Model model, HttpSession session) {
		session.setAttribute("id", vo.getId());
		model.addAttribute("notice", s.selectBoard(vo));

=======
	
	//공지 글 목록보기
	@RequestMapping(value="/noticeList.do")
	public String selectNotice(BoardVO vo, Model model) {
		model.addAttribute("notice", s.selectBoard(vo));
>>>>>>> 2060e3968cc38ada0691c01c72efada94f6d12c8
		return "notice_list.jsp";
	}

	// 공지 글 조회하기
	@RequestMapping(value = "/notice_content.do")
	public String selectNoticeContent(BoardVO vo, Model model) {
		model.addAttribute("nb", s.selectOneBoard(vo));
		return "notice_content.jsp";
	}

	// 공지 수정페이지 보기
	@RequestMapping(value = "/modifyNotice.do")
	public String modifyNotice(BoardVO vo, Model model) {
		model.addAttribute("nb", s.selectOneBoard(vo));
		return "notice_modify.jsp";
	}

	// 공지 수정하기
	@RequestMapping(value = "/updateNotice.do", method = RequestMethod.POST)
	public String pUpdate(BoardVO vo, HttpServletRequest request) throws IOException {

		BoardVO fn = s.selectOneForUpdate(vo);

		String save = "/notice/";
		ServletContext context = request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = vo.getUploadFile();

		long time = System.currentTimeMillis();
		SimpleDateFormat daytime = new SimpleDateFormat("HH-mm-ss");
		String time1 = daytime.format(time);

		if (!uploadfile.isEmpty()) {
			File f = new File(RealPath + fn.getFilename());
			f.delete();
			String fileName = uploadfile.getOriginalFilename();
			if (new File(RealPath + fileName).exists()) {
				String originfileName = uploadfile.getOriginalFilename();
				String onlyfileName = originfileName.substring(0, originfileName.indexOf("."));
				String extension = originfileName.substring(originfileName.indexOf("."));
				fileName = onlyfileName + "_" + time1 + extension;
				uploadfile.transferTo(new File(RealPath + fileName));
				vo.setFilename(fileName);
			} else {
				uploadfile.transferTo(new File(RealPath + fileName));
				vo.setFilename(fileName);
			}
		} else {
			vo.setFilename(fn.getFilename());
		}
		s.boardUpdate(vo);
		return "noticeList.do";
	}

	// 공지 삭제하기
	@RequestMapping(value = "/deleteNotice.do")
	public String noticeDelete(BoardVO vo, HttpServletRequest request) {

		BoardVO fn = s.selectOneForUpdate(vo);
		String save = "/notice/";
		ServletContext context = request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);

		File f = new File(RealPath + fn.getFilename());
		f.delete();
		s.boardDelete(vo);

		return "noticeList.do";
	}

}
