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
		<form action="insert.do" method="post" enctype="multipart/form-data" name="f1" onSubmit="return functionK();">
		<br><br>
		<table class="table_0">
			
			<thead>
				<tr>
					<th scope="cols" colspan="2">주류 등록</th>
				</tr>
			</thead>
			
			<tbody>
			<tr>
				<th scope="row">사진</th>
				<td>
					<input type="file" name="uploadFile">
				</td>
			</tr>
			
			<tr>
				<th scope="row">
					이름
				</th>
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
			
			<tr>
				<th scope="row">내용</th>
				<td><textarea name="pcontent" cols=40 rows=10></textarea></td>
			</tr>
			
			<tr>
				<th scope="row">용량</th>
				<td><input type="text" name="capacity">ml</td>
			</tr>
			
			<tr>
				<th scope="row">가격</th>
				<td><input type="text" name="cost">원</td>
			</tr>
			</tbody>
		</table>
		<input type="submit" value="상품 등록">
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />