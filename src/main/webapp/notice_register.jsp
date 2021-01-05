<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="top.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/notice_register.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	function functionK() {
		if (f1.title.value == "") {
			swal("글 제목을 입력해주세요!", "error");
			f1.title.value = "";
			f1.title.focus();
			return false;
		}

		if (f1.content.value == "") {
			swal("글 내용을 입력해주세요!", "error");
			f1.content.value = "";
			f1.content.focus();
			return false;
		}
	}
</script>
<body>

	<div align="center" id="body">
		<form action="insertNotice.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="flag" value="notice">
		<input type="hidden" name="id" value="master">
		<table class="table_0">
			<thead>
				<tr>
					<th colspan="2">공지사항 등록</th>
				</tr>
			</thead>
			<tr>
			<th scope="cols">사진</th>
			<td><input type="file" name="uploadFile"></td>
			</tr>
			
			<tr>
			<th scope="cols">제목</th>
			<td>
			<input type="text" name="title">
			</td>
			</tr>
			
			<tr>
			<th scope="cols">내용</th>
			<td><textarea name="content" cols=40 rows=10></textarea></td>
			</tr>
		</table>
		
		<input type="submit" value="글 등록">
		
		</form>
	</div>
</body>
</html>

<c:import url="bottom.jsp" />