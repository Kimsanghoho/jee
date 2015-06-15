<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 실패시 보여지는 페이지</title>
</head>
<body>
	<!-- 로그인 실패의 원인이 
	ID 이 틀린건지 PASS이 틀린겅지 알려줍쇼 -->
	<%= request.getAttribute("msg")%>
	
</body>
</html>