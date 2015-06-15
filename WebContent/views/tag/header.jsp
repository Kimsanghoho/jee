<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헤더 샘플</title>
	<style>
		@import url("<%=request.getContextPath()%>/css/header.css");
	</style>
</head>
<body>
	<div id="wrap">
	 <!-- wrap wrapper 의미로 주어지는 클래스나 아이디는
	body 바로 밑 최상위 div 에게 보통주어진다 문법적 의미 ㄴㄴ -->
		<header id="top">
			<div id = "login">
				<a href="#"> login </a> |
				<a href="#"> join </a>
			</div>
			<div class="clear"></div>
			<div id="logo">
				<a href="#">
					<img src="../../images/mo.gif" width="250px" height="60px" alt="" />
				</a>
			</div>
			<nav id="topMenu">
				<ul>
					<li><a href="#">HOME</a></li>
					<li><a href="#">COMPANY</a></li>
					<li><a href="#">SOLUTION</a></li>
					<li><a href="#">CUSTOMER CENTER</a></li>
					<li><a href="#">CONTACT US</a></li>
				</ul>
			</nav>
			
		</header>
	</div> 	<!-- warp end -->
	<div class="clear">
	<footer>
		<hr />
		<div ><!-- id="companyInfo" -->
			<pre>회사소개 :얼마나 몸이 힘차게 이것은 산야에 보이는 황금시대다. 뜨고, 같은 있는 평화스러운 사라지지 싸인 간에 보라. 전인 긴지라 불어 가치를 방황하여도, ? </pre>
		</div>
	</footer>
	</div>
	
</body>
</html>