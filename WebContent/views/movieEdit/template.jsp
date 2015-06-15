<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* aa */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 입력</title>
<style>
@IMPORT url("<%=request.getContextPath()%>/css/template.css");
	
</style>
</head>
<body>
	<table class = "tableClass">
	<tr class = "trClass">
		<td class = "tdClass">필  드</td>
		<td class = "tdClass">입력값</td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2" colspan=2>admin id pass 넘어와야함</td>
		
	</tr>
	
	<tr class = "trClass">
		<td class = "tdClass2">영화제목</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	
	<tr class = "trClass">
		<td class = "tdClass2">상영시간</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">관람가능나이</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">영화 포스터</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">개봉일</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">감독</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">배우</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">장르</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">간단한 줄거리</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">제작국가</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	</table>
</body>
</html>