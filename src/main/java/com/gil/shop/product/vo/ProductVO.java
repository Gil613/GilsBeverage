package com.gil.shop.product.vo;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private MultipartFile uploadFile;
	private int idx;
	private String filename;
	private String pname;
	private String pcontent;
	private String ptype;
	private String capacity;
	private String cost;
	private String pcode;
	private String search;
	

	
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	@Override
	public String toString() {
		return "ProductVO [uploadFile=" + uploadFile + ", idx=" + idx + ", filename=" + filename + ", pname=" + pname
				+ ", pcontent=" + pcontent + ", ptype=" + ptype + ", capacity=" + capacity + ", cost=" + cost
				+ ", pcode=" + pcode + ", search=" + search + "]";
	}
	
	
	}
