<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<style>
  @IMPORT url("<%=request.getContextPath()%>/css/movieView2.css");
 </style>
</head>
<body id="aa" >
<div id="di" style="background-image: url(<%=request.getAttribute("url")%>); ">
<iframe id="frame" width="900" height="500" src="https://www.youtube.com/embed/p-fDEhVBnv4" frameborder="0" allowfullscreen></iframe><br />

	<img id="img" src="<%=request.getAttribute("img")%>" alt=""  />
<div id = "bb">
	<pre id="pre"> <%=request.getAttribute("msg") %></pre>
</div>
<taable>
<tr>
<td>

</td>
</tr>
</taable>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

</div>

</body>
</html>