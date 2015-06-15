<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* aa */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 목록</title>
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
		<td class = "tdClass2">영화제목</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	
	<tr class = "trClass">
		<td class = "tdClass2">상영시간</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">포스터</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">관람가능 나이</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">영화 등록 날짜</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px"> </td>
	</tr>
	</table>
</body>
</html>