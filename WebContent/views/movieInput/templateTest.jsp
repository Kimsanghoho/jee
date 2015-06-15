<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>출력이 되는가??</title>
</head>
<body>
	영화이름<%=request.getAttribute("movieName") %> <br />
	시간 <%=request.getAttribute("viewTime") %> <br />
	포스터<%=request.getAttribute("poster") %> <br />
	관람가<%=request.getAttribute("availableAge") %> <br /> 
	좌석 <%=request.getAttribute("seat") %> <br />
	오픈<%=request.getAttribute("movieOpen") %> <br />
	끝<%=request.getAttribute("movieClose") %> <br />
	<br /><br />
	
	영화이름<%=request.getParameter("movieName") %> <br />
	시간 <%=request.getParameter("viewTime") %> <br />
	포스터<%=request.getParameter("poster") %> <br />
	관람가<%=request.getParameter("availableAge") %> <br /> 
	좌석 <%=request.getParameter("seat") %> <br />
	오픈<%=request.getParameter("movieOpen") %> <br />
	끝<%=request.getParameter("movieClose") %> <br />
</body>
</html>