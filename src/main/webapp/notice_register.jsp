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

	<div align="center" id="body">
	<h2>공지등록</h2><br>
		<form action="insertNotice.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="flag" value="notice">
		<input type="hidden" name="id" value="test">
		<table border="1" width="400">
			<tr><td>사진</td><td><input type="file" name="uploadFile"></td></tr>
			
			<tr>
			<td>제목</td>
			<td>
			<input type="text" name="title">
			</td>
			</tr>
			
			<tr><td>내용</td><td><textarea name="content" cols=40 rows=10></textarea></td></tr>
			
			
			<tr><td align="center" colspan="2"><input type="submit" value="글 등록"></td></tr>
		</table>
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />