package com.gil.shop.board.vo;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	 private MultipartFile uploadFile;
	 private int idx;
	 private String id;
	 private String filename;
	 private String regdate;
	 private String title;
	 private String content;
	 private String flag;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "BoardVO [uploadFile=" + uploadFile + ", idx=" + idx + ", id=" + id + ", filename=" + filename
				+ ", regdate=" + regdate + ", title=" + title + ", content=" + content + ", flag=" + flag + "]";
	}
	 
	 
}
