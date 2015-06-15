<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>카우푸 지수 구하기</title>
	<style>
		@IMPORT url("../..//css/model2/kaup.css");
	</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/model2/kaup.do">
		<table>
			<tr>
				<td>키</td>
				<td>
					<input type="text" id="height" name="height" placeholder="소수점 까지만"/>
				</td>
			</tr>
			<tr>
				<td>몸무게</td>
				<td>
					<input type="text" id="weight" name="weight" placeholder="소수점 까지만"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="전송" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>