package com.gil.shop.user.vo;

public class UserVO {
	  private String id;
	  private String pwd;
	  private String p_sha256;
	  private String p_bcrypt;
	  private String name;
	  private String phone;
	  private String email;
	  private String regdate;
	  
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getP_sha256() {
		return p_sha256;
	}
	public void setP_sha256(String p_sha256) {
		this.p_sha256 = p_sha256;
	}
	public String getP_bcrypt() {
		return p_bcrypt;
	}
	public void setP_bcrypt(String p_bcrypt) {
		this.p_bcrypt = p_bcrypt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate.substring(0, 10);
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pwd=" + pwd + ", p_sha256=" + p_sha256 + ", p_bcrypt=" + p_bcrypt + ", name="
				+ name + ", phone=" + phone + ", email=" + email + ", regdate=" + regdate + "]";
	}
	
	
	  
	  
		
}
