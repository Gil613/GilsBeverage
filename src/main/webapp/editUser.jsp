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
</style>

<title>Insert title here</title>
</head>
<body>
<div align="center">
<div id="text1">회원정보수정</div>
<hr id="hr">
<div>
<form method="post" name="f1" action="join.do">
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
	  <input type="button" onclick="location.href='home.jsp'" value="뒤로가기">
	<br><br>
	</form>
	
	
</div>
</div>
</body>
</html>