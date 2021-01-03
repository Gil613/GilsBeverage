package com.gil.pre.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.gil.shop.product.service.ProductService;
import com.gil.shop.product.vo.ProductVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService s;
	
	@RequestMapping(value="/insert.do", method=RequestMethod.POST)
	public String insert(ProductVO vo, HttpServletRequest request) throws IOException{
		String save="/product/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		MultipartFile uploadfile = vo.getUploadFile();
		System.out.println(RealPath);

		
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
			vo.setFilename("trash.jpg");
		}
		s.pinsert(vo);
		return "home.jsp";
	}
	
	@RequestMapping(value="/delete.do")
	public String pDelete(ProductVO vo, HttpServletRequest request) {
		
		ProductVO fn =s.selectForUpdate(vo);
		
		
		String save="/product/";
		ServletContext context =request.getSession().getServletContext();
		String RealPath = context.getRealPath(save);
		File f = new File(RealPath + fn.getFilename());
		f.delete();
		
		s.pdelete(vo);
		return "home.jsp";
	}
	
	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public String pUpdate(ProductVO vo, HttpServletRequest request) throws IOException{
		
		ProductVO fn =s.selectForUpdate(vo);
		
		
		String save="/product/";
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
		s.pupdate(vo);
		return "home.jsp";
	}
	
	@RequestMapping(value="/whisky.do")
	public String whisky(ProductVO vo, Model model) {
		model.addAttribute("whisky", s.whisky(vo));
		return "whisky_list.jsp";
	}
	
	@RequestMapping(value="/vodka.do")
	public String vodka(ProductVO vo, Model model) {
		model.addAttribute("vodka", s.vodka(vo));
		return "vodka_list.jsp";
	}
	
	@RequestMapping(value="/brandy.do")
	public String brandy(ProductVO vo, Model model) {
		model.addAttribute("brandy", s.brandy(vo));
		return "brandy_list.jsp";
	}
	
	@RequestMapping(value="/tequila.do")
	public String tequila(ProductVO vo, Model model) {
		model.addAttribute("tequila", s.tequila(vo));
		return "tequila_list.jsp";
	}
	
	@RequestMapping(value="/gin.do")
	public String gin(ProductVO vo, Model model) {
		model.addAttribute("gin", s.gin(vo));
		return "gin_list.jsp";
	}
	
	@RequestMapping(value="/lw.do")
	public String lw(ProductVO vo, Model model) {
		model.addAttribute("lw", s.lw(vo));
		return "lw_list.jsp";
	}
	
	@RequestMapping(value="/content.do")
	public String selectOne(ProductVO vo, Model model) {
		model.addAttribute("p", s.selectOne(vo));
		return "product_content.jsp";
	}
	
	@RequestMapping(value="/modify.do")
	public String modify(ProductVO vo, Model model){
		model.addAttribute("m", s.selectOne(vo));
		return "product_modify.jsp";
	}
}
