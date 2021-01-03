<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/product_content.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div id="outline" align="center">
		<br>
			<table class="table_0">
				<tr>
					<th rowspan=4><img id="img_edit" src="./product/${p.filename}" /></th>
					<th id="text_0">${p.pname}</th>
				</tr>
				<tr>
					<th id="text_1">${p.capacity}</th>
				</tr>
				<tr>
					<th id="text_2">${p.cost} 원</th>
				</tr>
				<tr>
					<th id="textarea">${p.pcontent}</th>
				</tr>
			</table>
			<c:if test="${id eq 'master'}">
			<a href="modify.do?idx=${p.idx}"><input type="button" value="수정하기"></a>
			</c:if>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />