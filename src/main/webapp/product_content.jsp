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
					<th id="img_bgc" rowspan=4><img id="img_edit" src="./product/${p.filename}" /></th>
					<th id="text_0">${p.pname}</th>
				</tr>
				<tr>
					<th id="text_1">${p.capacity}ml</th>
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
			<c:if test="${id != null}">
			<a href="scrap.do?pname=${p.pname}"><input type="button" value="스크랩하기"></a>
			</c:if>
			<input type="button" onClick="location.href='tequila.do'" value="목록보기">
	</div>
</body>
</html>

<c:import url="bottom.jsp" />