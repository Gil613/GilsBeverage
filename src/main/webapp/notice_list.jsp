<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/stylesheet.css">
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 게시판</title>
</head>

<body>
	<div align="center" id=body>
	<h2>공지 게시판</h2><br>
	
	<table border=1 width="500">
	<tr>
	<th>글 번호</th><th>글 제목</th><th>작성 일</th>
	</tr>
	<c:forEach var="n" items="${notice}">
	<tr>
	<td>${n.idx}</td><td>${n.title}</td><td>${n.regdate}</td>
	</tr>
	</c:forEach>
	</table>
	
	</div>
</body>
</html>

<c:import url="bottom.jsp" />