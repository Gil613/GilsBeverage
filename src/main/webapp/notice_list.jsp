<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/notice_list.css">
<meta charset="UTF-8">

<style type="text/css"> 
	a { text-decoration:none } 
	a:link { color:black }
	a:visited { color:black }
</style> 

<title>공지 게시판</title>
</head>

<body>

	<div align="center" id=body>
	<div id="title">
	<table>
		<tr>
			<td id="t1">공지게시판</td>
			<td id="t2">| 이 곳은 공지를 확인하는 공간입니다.</td>
		</tr>
	</table>
	</div>

	<table class="table_0">
		<thead>
			<tr>
				<th scope="cols" id="th_0">글 번호</th>
				<th scope="cols" id="th_1">글 제목</th>
				<th scope="cols" colspan=2 id="th_2">작성 일</th>
			</tr>
		</thead>
	<c:forEach var="n" items="${notice}">
		<tr>
			<td>${n.idx}</td>
			<td><a href="notice_content.do?idx=${n.idx}">${n.title}</a></td>
			<td>${n.regdate}</td>
			 <c:if test="${id eq 'master'}">
			<td><input type="button" onclick="location.href='deleteNotice.do?idx=${n.idx}'" value="삭제"></td>
			</c:if>
		</tr>
	</c:forEach>
	</table>
<form action="notice_register.jsp">
 <c:if test="${id eq 'master'}">
	<input type="submit" value="글쓰기">
	</c:if>
	</form>
	</div>
	
</body>
</html>

<c:import url="bottom.jsp" /> 