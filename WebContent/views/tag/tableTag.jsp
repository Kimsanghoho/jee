<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>테이블 태그</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/tableTag.css");
	</style>
</head>
<body>
	<table class="tableTag" summary="테이블 요약 설명">
		<caption>제 목</caption>
		<colgroup> <!-- column 한 셀에 대한 가로값을 입력 -->
			<col width="20%"/>
			<col width="40%"/>
			<col width="40%"/>
		</colgroup>
		<thead> <!-- table head 테이블 속 컬럼명을 지정 -->
			<tr>
				<td>이름</td>
				<td>나이</td>
				<td>국적</td>
			</tr>
		</thead>
		<tbody> <!-- table body 테이블에서 데이터를 랜더링 하는 집합체 -->
			<tr>
				<td>홍길동</td>
				<td>20</td>
				<td>한국</td>
			</tr>
			<tr>
				<td>톰</td>
				<td>30</td>
				<td>미국</td>
			</tr>
			<tr>
				<td>기욤</td>
				<td>40</td>
				<td>케나다</td>
			</tr>
		</tbody>
	</table>
</body>
</html>