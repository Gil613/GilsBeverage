<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/stylesheet.css">
</head>

<body>
	<div align="center" id=body>
	<h2>공지 글 수정하기</h2><br>
	<form action="updateNotice.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="idx" value="${nb.idx}">	
	<table>
	<tr>
		<th>
			<input type="text" value="${nb.title}" name="title">
			<hr>
		</th>
	</tr>
	<tr>
		<th>
			<img id="img_edit" src="./notice/${nb.filename}" name="filename"/>
			<input type="file" name="uploadFile" >
			<br>
			<textarea name="content" cols=40 rows=10>${nb.content}</textarea>
		</th>
	</tr>
	</table>
	<input type="submit" value="수정완료">
	</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />