<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/product_modify.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<div align="center" id="body">
		<form action="update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="idx" value="${m.idx}">
		<table class="table_0">
			<thead>
				<tr>
					<th scope="cols" colspan="2">상품 수정</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<th scope="row">사진</th>
					<td><img id="img" src="./product/${m.filename}"/>
					<br>
					<input type="file" name="uploadFile" ></td>
				</tr>
				
				<tr>
					<th scope="row">이름</th>
					<td>
						<select name="ptype">
						<option value="--선택하세요--">--선택하세요--</option>
						<option value="보드카" <c:if test="${m.ptype=='보드카'}">selected</c:if>>보드카</option>
						<option value="데킬라"<c:if test="${m.ptype=='데킬라'}">selected</c:if>>데킬라</option>
						<option value="진"<c:if test="${m.ptype=='진'}">selected</c:if>>진</option>
						<option value="브랜디"<c:if test="${m.ptype=='브랜디'}">selected</c:if>>브랜디</option>
						<option value="위스키" <c:if test="${m.ptype=='위스키'}">selected</c:if>>위스키</option>
						<option value="기타주류"<c:if test="${m.ptype=='기타주류'}">selected</c:if>>기타주류</option>
						</select>
						<input type="text" name="pname" value="${m.pname}">
					</td>
				</tr>
				
				<tr>
					<th scope="row">내용</th>
					<td><textarea name="pcontent" cols=40 rows=10>${m.pcontent}</textarea></td>
				</tr>
				
				<tr>
					<th scope="row">용량</th>
					<td><input type="text" name="capacity" value="${m.capacity}">ml</td>
				</tr>
				
				<tr>
					<th scope="row">가격</th>
					<td><input type="text" name="cost" value="${m.cost}">원</td>
				</tr>
			</tbody>
		</table>
		
			<input type="submit" value="수정">
		
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />