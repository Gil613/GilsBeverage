<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/login.css">
</head>
<div id="outline"></div>
<body>
<div align="center">
<form action="login.do" method="post">

	<div id="title">Gil's Beverage Shop</div><br>

	<input type="text" id="btn_text" name="id" placeholder="ID"><br>

	<input type="password" id="btn_pwd" name="pwd" placeholder="PWD"><br>

	<input type="submit" value="Login"><br>

	<a href="join.jsp"><input type=button id="btn_1" value="Sign Up"/></a>
</form>
</div>
</body>
</html>