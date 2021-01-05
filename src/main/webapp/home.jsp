<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/home.css">
<div align="center">
<img id="main_img" src="./img/m_5_u.jpg">
</div>

<c:import url="top.jsp" />

<style type="text/css"> 
	a { text-decoration:none } 
	a:link { color:black }
	a:visited { color:black }
</style> 

	<div align="center">
		<form action="searchList.do"><br>
<input  type="text"  name="search" placeholder="검색"> 
<input  type="submit"  value="검색하기" >
</form>
	</div>
	  <div align="center">	
		<table class="table_0">
			<tr>
				<td id="td_1"><a href="vodka.do">Vodka</a></td>
				<td><a href="whisky.do">Whisky</a></td>
				<td><a href="brandy.do">Brandy</a></td>
			</tr>

			<tr>
				<td><a href="tequila.do">Tequila</a></td>
				<td><a href="gin.do">Gin</a></td>
				<td><a href="lw.do">Liquor/Wine</a></td>
			</tr>
		</table>
	  </div>	

		<!--
		<div id=link_text0>
			<a href="vodka.do"><span id="t0">Vodka</span></a>&emsp;&emsp;&emsp;
			<a href="whisky.do"><span id="t1">Whisky</span></a>&emsp;&emsp;&emsp;&nbsp;&nbsp;
			<a href="brandy.do"><span id="t2">Brandy</span></a>&emsp;&emsp;&emsp;
		</div>
		<div id=link_text1>	
			<a href="tequila.do"><span id="t3">Tequila</span></a>&emsp;&emsp;&emsp;&nbsp;
			<a href="gin.do"><span id="t4">Gin</span></a>&emsp;&emsp;&emsp;
			<a href="lw.do"><span id="t5">Liquor/Wine</span></a>
		</div>
		 -->

		<div id="last_text">
			Gil's Beverage Shop은 신뢰와 성실을 바탕으로 1993년도부터 장사하였습니다.
		</div>

<c:import url="bottom.jsp" />