<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/notice_content.css">
</head>

<body>
	<div align="center" id=body>
	<table class="table_0">
	<thead>
		<tr>
			<th>칵테일 레시피 보기</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<th>${c.title}</th>
		</tr>
		<tr>
		<th>
			<c:if test="${c.filename ne 'space.jpg'}">
	
				<img id="img_edit" src="./cocktail/${c.filename}" />
			</c:if><br>
			${c.content}
			</th>
		</tr>
	</tbody>
	</table>
	
	<c:if test="${id eq 'master'}">
		<input type="button" onClick="location.href='modifyCocktail.do?idx=${c.idx}'" value="수정하기">
	</c:if>
	<input type="button" onClick="location.href='cocktailList.do?idx=${c.idx}'" value="목록보기">
	</div>
</body>
</html>

<c:import url="bottom.jsp" />