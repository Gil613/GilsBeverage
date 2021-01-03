<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/stylesheet.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div align="center" id=body>
	<h2>공지 글</h2><br>
	<table>
	<tr><th>${nb.title}<hr></th></tr>
	<tr><th><c:if test="${nb.filename ne 'space.jpg'}"><img id="img_edit" src="./notice/${nb.filename}" /></c:if>
	<br>
	${nb.content}</th></tr>
	</table>
	<c:if test="${id eq 'master'}">
	<a href="modifyNotice.do?idx=${nb.idx}">수정하기</a>
	</c:if>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />