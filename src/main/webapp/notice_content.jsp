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
	<h2>공지 글</h2><br>
	<table>
	<tr><th>${nb.title}<hr></th></tr>
	<tr><th><img id="img_edit" src="./notice/${nb.filename}" /><br>
	${nb.content}</th></tr>
	</table>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />