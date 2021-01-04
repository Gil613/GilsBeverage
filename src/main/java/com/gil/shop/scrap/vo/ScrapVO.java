package com.gil.shop.scrap.vo;

public class ScrapVO {
	private int idx;
    private String id;
    private String pname;
    private String regdate;
    
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
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate.substring(0, 10);
	}
	@Override
	public String toString() {
		return "ScrapVO [idx=" + idx + ", id=" + id + ", pname=" + pname + ", regdate=" + regdate + "]";
	}
    
	
    

}
