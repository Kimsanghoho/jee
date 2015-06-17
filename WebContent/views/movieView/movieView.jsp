<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
 <meta charset="UTF-8" />
 <title>Document</title>
 <style>
  @IMPORT url("<%=request.getContextPath()%>/css/movieView.css");
 </style>
 <script type="text/javascript">
 function aa(){
	   <%-- location.href = "<%=request.getContextPath()%>/member/joinForm.do"; --%>
	   document.aa.submit();
	  }
 </script>
</head>
<body>
<form action="<%=request.getContextPath()%>/movie/viewreturn.do" name="aa">
아이디<input type="text" name="id" id="id"/> <br />
비번 :<input type="text" name="pass" id="pass" />

 <div >
 <table id="table" >
  <tr>
   <td>
   <a href=""><img src="<%=request.getContextPath()%>/images/1.JPG"  name="aa" /></a>
   </td>
   <td>
   <span onClick="doAction()"><img src="<%=request.getContextPath()%>/images/2.JPG"></span>
  <!--   로 클릭할 이미지에 이벤트를 걸어놓고
   doAction()함수에서는 
   var pass = document.getElementById("pass");
   document.location.href = "serch.jsp?pass=" + pass.value;
    -->
   
   
   </td>
   <td><img src="<%=request.getContextPath()%>/images/3.JPG"  /></td>
   <td><img src="<%=request.getContextPath()%>/images/4.JPG"  /></td>
  </tr>
  <tr>
   <td >
   <a href="<%=request.getContextPath()%>/movie/view.do?name=1"  style=  onclick="return aa()">
   <aa>극비수사</aa> <br />
   스릴러 |한국 <br />
   개봉일 2015-05-18
   </a>
   </td>
   <td style="text-align: center;">영화제목</td>
   <td style="text-align: center;">영화제목</td>
   <td style="text-align: center;">영화제목</td>
  </tr>
 </table>
 </div>
 <input type="submit" value="전 송" />
 
 </form>
</body>
</html>  