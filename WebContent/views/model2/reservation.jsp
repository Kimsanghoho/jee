<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예약결과</title>
</head>
<body>
<hr style="width: 400PX; height: 20px; border-color: black; "/>
	<div style="text-align: center;">
	 <%
	  String[][] seat = new String[3][5]; //전체좌석
	  String[][] mySeat = new String[0][0];//예약된 좌석
	 /* int floor =Integer.parseInt((String)request.getAttribute("floor"));
	  int row =Integer.parseInt((String)request.getAttribute("row"));*/
	  int floor = 1;
	  int row = 1;
	  String id = "dd";
	 // mySeat[floor][row] = (String)request.getAttribute("id");
   	 
	  for ( int i = 0; i < seat.length; i++) {
	            for (int j = 0 ; j < seat[i].length; j++) {
	                if (seat[floor][row] == null) {%>
	                   <!--  System.out.print("" + (i + 1) + "0" + (j + 1) + "호"
	                            + " □\t" + "\t"); -->
	                           <%="□"%> <%=i+1%>-<%=j+1 %>  
	               <% } else {%>
	                  		   <%="■"%> <%=i+1%>-<%=j+1 %> 
	               <% } 
	                }%>
	           <br />
	       <%
	       }%>
	</div>
	<div>
	<form action="">
		<fieldset>
			<legend>주문내용</legend>
			<ol>
				<li>
					<label for = "prod">좌석</label>
					<input type="text" name="id" id="id" placeholder="아이디를 입력" />
				</li>
				<li>
					<label for = "num">열번호</label>
					<input id = "floor" name="floor" type="number" min="1" max="3" value="1"/>
				</li>
				<li>
					<label for = "num">행번호</label>
					<input id = "row" name="row" type="number" min="1" max="5" value="1"/>
				</li>
			</ol>
			
		</fieldset>
		
		<input type="submit" value="등록" />
	</form>
	</div>
	
</body>
</html>