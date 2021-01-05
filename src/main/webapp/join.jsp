<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/join.css">
<meta charset="UTF-8">
<style>
	input::placeholder {
		direction: ltr;
	}
	.swal-button 
	{
		background-color: #FFB2D9;
		font-size: 12px;
		text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
	}
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Insert title here</title>
</head>
<script>
	function functionK(){
	     if (f1.id.value=="") {
	    	swal("ID는 필수입력!", "아이디는 필수입력입니다.", "error");
	    	f1.id.value="";
	        f1.id.focus(); 
	        return  false ;
	     }
	
	     if (f1.pwd.value.length < 4) {
	        swal("비밀번호가 너무 짧아요! ", "비밀번호는 4자이상 입력해주세요.", "error");
	        f1.pwd.value="";
	        f1.pwd.focus(); 
	        return  false ;
	     }
	     if (f1.name.value == "") {
		       swal("이름을 입력해주세요! ", "이름은 필수입력입니다.", "error");
		       f1.name.value="";
		       f1.name.focus(); 
		       return  false ;
		 }
	     if (f1.email.value == "") {
		       swal("이메일을 입력해주세요! ", "안내받을 이메일을 입력해주세요.", "error");
		       f1.email.value="";
		       f1.email.focus(); 
		       return  false ;
		 }
		 if (f1.phone.value == "") {
		       swal("전화번호를 입력해주세요! ", "전화번호를 입력해야합니다.", "error");
		       f1.phone.value="";
		       f1.phone.focus(); 
		       return  false ;
		 }
	  }
</script>
<body>
<div align="center">
<div id="text1">회원가입</div>
<hr id="hr">
<div>
<form method="post" action="join.do" name="f1" onSubmit="return functionK();">
	<table class="t_1">
		<tr>
			<th id="text2">아이디</th>
		</tr>
		<tr>
			<th>
				<input type="text" name="id" placeholder="ex) jdk1234">
			</th>
		</tr>

		<tr>
			<th id="text3">비밀번호</th>
		</tr>
		<tr>
			<th>
				<input type="password" name="pwd" placeholder="ex) jdk1234!@">
			</th>
		</tr>

		<tr>
			<th id="text4">이름</th>
		</tr>
		<tr>
			<th>
				<input type="text" name="name" placeholder="ex) allen">
			</th>
		</tr>
		 <tr>
			 <th id="text5">전화번호</th>
		 </tr>
		 <tr>
			 <th>
			 	  <input type="text" name="phone" placeholder="ex) 010-0000-0000">
			 </th>
		 </tr>
		 
		 <tr>
			 <th id="text6">이메일</th>
		 </tr>
		 <tr>
			 <th>
			 	<input type="text" id="btn_1" name="email" placeholder="ex) aaa@naver.com">
			 </th>
		</tr>
		 
		</table>
		<br><br><br>
		<!--<input type=submit  value="등록">-->


	  <input type="submit" value="가입하기"> 
	  <input type="button" onclick="location.href='login.jsp'" value="로그인하기">
	<br><br>
	</form>
	
	
</div>
</div>
</body>
</html>