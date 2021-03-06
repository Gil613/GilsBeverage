<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/community_modify.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div align="center" id=body>
	<form action="updateCommunity.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="idx" value="${c.idx}">	
	
	<table class="table_0">
	
	<thead>
		<tr>
			<th>커뮤니티 글 수정</th>
		</tr>
	</thead>
	
	<tbody>
	<tr>
		<th>
			<input type="text" value="${c.title}" name="title">
		</th>
	</tr>
	<tr>
		<th>
		
			<img id="img_edit" src="./community/${c.filename}" name="filename"/>
			<input type="file" name="uploadFile" >
			<br>
			<textarea name="content" cols=40 rows=10>${c.content}</textarea>
		</th>
	</tr>
	</tbody>
	</table>
	<input type="submit" value="수정완료">
	</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />