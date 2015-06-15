<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>404 에러 발생</title>
</head>
<body>
	<div>
	<img src="<%=request.getContextPath() %>/images/404.png" alt="" />
	</div>
<!-- 
HTTP 프로토콜은 응답상태 코드를 이용하여
서버의 처리결과를 웹브라우저에 알려주어
주요 응답상태코드로는 다음과 같은것이 있다
200 OK
307 임시 리다이렉트
400 문법에러
401 접근불가(관리자만 접근)
404 URL에 따른 페이지 존재하지 않음
405 요청된 메서드는 허용 불가 (get post) 일때
500 서버 내부 에러 JSP 에서 익셉션이 발생했을 경우
503 서버 부하 예)디도스

jsp 가 정상적으로 실행되는 응답코드로 200이 전송되며
response 를이용할경우 응답코드 307 전송
 -->
</body>
</html>