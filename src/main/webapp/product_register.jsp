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
	<h2>상품등록</h2><br>
		<form action="insert.do" method="post" enctype="multipart/form-data">
		<table border="1" width="400">
			<tr><td>사진</td><td><input type="file" name="uploadFile"></td></tr>
			
			<tr>
			<td>이름</td>
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
			
			<tr><td>내용</td><td><textarea name="pcontent" cols=40 rows=10></textarea></td></tr>
			
			<tr><td>용량</td><td><input type="text" name="capacity"></td></tr>
			
			<tr><td>가격</td><td><input type="text" name="cost">원</td></tr>
			<tr><td align="center" colspan="2"><input type="submit" value="상품 등록"></td></tr>
		</table>
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />