<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원 정보 관리</title>
</head>
<body>
	<fieldset>
	<legend>회원가입</legend>
		<table>
			<tr>
				<td>이름</td>
				<td>
				${name}
				</td>
			</tr>
			<tr>
				<td>ID</td>
				<td>
				${id}
				</td>
			</tr>
			<tr>
				<td>나이</td>
				<td>
				${age }세
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
				${addr}
				</td>
			</tr>
			
		</table>
	</fieldset>
	
</body>
</html>