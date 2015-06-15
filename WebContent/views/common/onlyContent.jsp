<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- html:5 -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/onlyContent.css");
	</style>
</head>
<body>
<!-- table>tr>td*3 -->
		<header>
			<h3>헤더</h3>
		</header>
		<article>
			<section class="content">
				<h3>콘텐츠</h3>
			</section>
		</article>
		
		<footer>
			<h3>푸터</h3>
		</footer>
</body>
</html>