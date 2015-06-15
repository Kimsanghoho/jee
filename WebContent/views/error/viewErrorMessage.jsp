<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>에러 발생</title>
</head>
<body>
<img src="<%=request.getContextPath()%>/images/error.jpg" alt="" />
<p>
에러 타입 : <%=exception.getClass().getName() %> <br />
에러메세지 : <%=exception.getMessage() %>
</p>
</body>
</html>