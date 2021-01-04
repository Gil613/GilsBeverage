<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/cocktail_register.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div align="center" id="body">
		<form action="insertCocktail.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="flag" value="cocktail">
		<input type="hidden" name="id" value="master">
		<table class="table_0">
			<thead>
				<tr>
					<th scope="cols" colspan="2">칵테일 레시피 등록</th>
				</tr>
			</thead>
			
			<tr>
				<th scope="row">사진</th>
				<td><input type="file" name="uploadFile"></td>
			</tr>
			
			<tr>
				<th scope="row">제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			
			<tr>
				<th scope="row">내용</th>
				<td><textarea name="content" cols=60 rows=10></textarea></td>
			</tr>
		</table>
		
		<input type="submit" value="레시피 등록">
		
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />