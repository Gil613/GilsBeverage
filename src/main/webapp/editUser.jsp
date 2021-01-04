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
	    if (f1.pwd.value.length < 4) {
	       swal("비밀번호가 너무 짧아요! ", "비밀번호는 4자이상 입력해주세요", "error");
	       f1.pwd.value="";
	       f1.pwd.focus(); 
	       return  false ;
	    }
	 }
</script>
<body>
<div align="center">
<div id="text1">회원정보수정</div>
<hr id="hr">
<div>
<form method="post" action="editUserOk.do" name="f1" onSubmit="return functionK();">
	<table class="t_1">
		<tr>
			<th id="text2">아이디</th>
		</tr>
		<tr>
			<th>
				<input type="text" name="id" value="${user.id}" readonly="readonly">
			</th>
		</tr>

		<tr>
			<th id="text3">비밀번호</th>
		</tr>
		<tr>
			<th>
				<input type="password" name="pwd" value="${user.pwd}">
			</th>
		</tr>

		<tr>
			<th id="text4">이름</th>
		</tr>
		<tr>
			<th>
				<input type="text" name="name" value="${user.name}" readonly="readonly">
			</th>
		</tr>
		 <tr>
			 <th id="text5">전화번호</th>
		 </tr>
		 <tr>
			 <th>
			 	  <input type="text" name="phone" value="${user.phone}">
			 </th>
		 </tr>
		 
		 <tr>
			 <th id="text6">이메일</th>
		 </tr>
		 <tr>
			 <th>
			 	<input type="text" id="btn_1" name="email" value="${user.email}">
			 </th>
		</tr>
		 
		</table>
		<br><br><br>
		<!--<input type=submit  value="등록">-->
	  <input type="submit" value="수정완료"> 
	  <a href="deleteUser.do?id=${user.id}"><input type="button" value="회원탈퇴"></a>
	  <input type="button" onclick="location.href='home.jsp'" value="뒤로가기">
	<br><br>
	</form>
	
	
</div>
</div>
</body>
</html>