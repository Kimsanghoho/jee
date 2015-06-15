<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>링크 태그</title>
</head>
<body>
	<h3>링크태그 a 와 img 태그</h3>
	<div>
		<h3>링크태그(a) : 페이지 이동</h3>
		<a href="#">기본형</a>
		<a href="http://www.naver.com">네이버</a>
	</div>
	<p></p> <!-- 단락분리 -->
	<div>
		<h3>이미지 태그(img)</h3>
		<img src="<%=request.getContextPath()%>/images/Koala.jpg" alt="" style="width: 200px; "/>
		<!-- 이미지는 width 값만 줘도 비율로 줄어듬 -->
	</div>
</body>
</html>