<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/cocktail_list.css">
<meta charset="UTF-8">
<title>칵테일 게시판</title>

<style type="text/css"> 
	a { text-decoration:none } 
	a:link { color:black }
	a:visited { color:black }
</style> 

</head>

<body>
	<div align="center" id=body>
			<table class="table">
				<tr>
					<td id="t1">칵테일 게시판</td>
					<td id="t2">| 이 곳은 칵테일 제조법을 공유하는 공간입니다.</td>
				</tr>
			</table>

		<table class="table_0">
			<thead>
				<tr>
					<th scope="cols" id="th_0">글 번호</th>
					<th scope="cols" id="th_1">사 진</th>
					<th scope="cols" id="th_2">글 제목</th>
					<th scope="cols" colspan=2 id="th_3">작성 일</th>
				</tr>
			</thead>
			<c:forEach var="c" items="${cocktail}">
				<tr>
					<td>${c.idx}</td>
					<td><c:if test="${c.filename ne 'space.jpg'}"><img id="img" src="./cocktail/${c.filename}"/></c:if></td>
					<td><a href="cocktail_content.do?idx=${c.idx}">${c.title}</a></td>
					<td>${c.regdate}
			<c:if test="${id eq 'master'}">		
					&nbsp;<input type="button"
						onclick="location.href='deleteCocktail.do?idx=${c.idx}'"
						value="삭제"></c:if></td>
				</tr>
			</c:forEach>

		</table>
		<div id="button_spot">
			<c:if test="${id eq 'master'}">
				<input type="button" onclick="location.href='cocktail_register.jsp'" value="레시피 등록">
			</c:if>
		</div>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />