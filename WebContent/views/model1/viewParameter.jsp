<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Enumeration" %>
    <%@page import="java.util.Map" %>
   <%--  <%
    	request.setCharacterEncoding("UTF-8");
    %> --%>
    
    <!--
    request.getParameter() 는 낱개 파라미터 값을 키값과 벨류값을 리턴   
    request.getParameterValues() 는 키값없이 벨류값만 리턴 체크박스
    request.getParameterNames() 는 키값만 리턴 노쓸모
    request.getParameterMap() 는 파라미터 벨류가 복수인 경우
    
    -->
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼값 받은 페이지</title>
</head>
<body>
<div>
	<b>request.getParameter() 사용</b> <br />
	name 파라미터 = <%=request.getParameter("name") %> <br />
	address 파라미터 = <%=request.getParameter("address") %> 
	<p></p>
	<b>request.getParameterValues() 사용</b> <br />
	<% String[] values = request.getParameterValues("pet");
		if(values != null){
			for(int i =0; i<values.length;i++){ %>
			
				넘어온 벨류<%=values[i]%>
				<%
			}
		}
	%> <br />
	
	<b>request.getParameterNames() 사용</b> <br />
	<% 
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement(); %>
			<%= name%>
			<%
		}
	%> <br />
	<b>request.getParameterMap() 사용</b> <br />
	<%
		Map paraMap = request.getParameterMap();
	String[] nameParam = (String[])paraMap.get("name");
	if(nameParam != null){%>
		이름 = <%= nameParam[0]%>
		<%
	}
	%>
</div>
	
</body>
</html>