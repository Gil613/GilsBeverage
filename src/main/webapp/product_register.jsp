<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/product_register.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div align="center" id="body">
	<div id="title">주류 등록</div><br>
		<form action="insert.do" method="post" enctype="multipart/form-data">
		<table class="table_0">
			<tr>
				<td id="table_text_0">사진</td>
				<td>
					<input type="file" name="uploadFile">
				</td>
			</tr>
			
			<tr>
				<td id="table_text_1">
					이름
				</td>
				<td>
					<select name="ptype">
						<option value="보드카">보드카</option>
						<option value="데킬라">데킬라</option>
						<option value="진">진</option>
						<option value="브랜디">브랜디</option>
						<option value="위스키" selected="selected">위스키</option>
					<option value="기타주류">기타주류</option>
					</select>
					<input type="text" name="pname">
				</td>
			</tr>
			
			<tr><td id="table_text_2">내용</td><td><textarea name="pcontent" cols=40 rows=10></textarea></td></tr>
			
			<tr><td id="table_text_3">용량</td><td><input type="text" name="capacity">ml</td></tr>
			
			<tr><td id="table_text_4">가격</td><td><input type="text" name="cost">원</td></tr>
		</table>
		<input type="submit" value="상품 등록">
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />