<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/join.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>회원가입</h1>
<div>
<form method="post" name="f1" action="join.do">
	<table>
		<tr>
			<td>아이디</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="id" >
			</td>
		</tr>

		<tr>
			<td>비밀번호</td>
		</tr>
		<tr>
			<td>
				<input type="password" name="pwd">
			</td>
		</tr>

		<tr>
			<td>이름</td>
		</tr>
		<tr>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		 <tr>
			 <td id="text2">전화번호</td>
		 </tr>
		 <tr>
			 <td>
			 	  <input type="text" name="phone" placeholder="010-0000-0000">
			 </td>
		 </tr>
		 
		 <tr>
			 <td id="text1">이메일</td>
		 </tr>
		 <tr>
			 <td>
			 	<input type="text" name="email" placeholder="aaa@naver.com">
			 </td>
		</tr>
		 
		</table>
		<br><br><br>
		<!--<input type=submit  value="등록">-->


	  <input type="submit" value="가입하기"> 
	  <input type="reset" value="다시입력하기">
	<br><br>
	</form>
	
	
</div>
</div>
</body>
</html>