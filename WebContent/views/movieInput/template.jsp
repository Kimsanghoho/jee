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
<div>
<form action="<%=request.getContextPath()%>/name/hello.nhn">
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
		<td class = "tdClass2"> <input type="text" style="width: 350px" name="movieName" id="movieName"> </td>
	</tr>
	
	<tr class = "trClass">
		<td class = "tdClass2">상영시간</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px" name="viewTime" id="viewTime"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">관람가능나이</td>
		<td class = "tdClass2"> 
				 <input type="radio" name="availableAge" value="7" />7세
				 <input type="radio" name="availableAge" value="12" />12세
				 <input type="radio" name="availableAge" value="15" />15세
				 <input type="radio" name="availableAge" value="19" />19금
				
		</td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">영화 포스터</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px" name="poster" id="poster"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">좌석</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px" name="seat" id="seat"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">개봉일</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px" name="movieOpen" id="movieOpen"> </td>
	</tr>
	<tr class = "trClass">
		<td class = "tdClass2">마감일</td>
		<td class = "tdClass2"> <input type="text" style="width: 350px" name="movieClose" id="movieClose"> </td>
	</tr>
	
	
	</table>
	<input type="submit" value="전송" />
	</form>
</div>
</body>
</html>