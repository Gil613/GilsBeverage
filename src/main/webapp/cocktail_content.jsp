<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/stylesheet.css">
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div align="center" id=body>
	<h2>칵테일 수정</h2><br>
	<table>
	<tr><th>${c.title}<hr></th></tr>
	<tr><th><c:if test="${c.filename ne null}"><img id="img_edit" src="./cocktail/${c.filename}" /></c:if>
	<br>
	${c.content}</th></tr>
	</table>
	<a href="modifyCocktail.do?idx=${c.idx}">수정하기</a>
	<a href="cocktailList.do">목록보기</a>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />