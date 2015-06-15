<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼 태그2</title>
</head>
<body>
	<form action="">
		<fieldset>
			<legend>체크박스 라디오버튼</legend>
			어벤저스 맴버는? <br />
			<input type="checkbox" name="avengers" value="iron" checked="checked" />아이언맨
			 <input type="checkbox" name="avengers" value="hulk" />헐크
			 <input type="checkbox" name="avengers" value="captain" />캡아
			 <input type="checkbox" name="avengers" value="batman" />박쥐
			 <input type="checkbox" name="avengers" value="hawk" />매눈 <br />
			 
			 성별을 선택 <br />
			 <input type="radio" name="gender" value="male" checked="checked" />남자
			 <input type="radio" name="gender" value="femail" />여자 <br />
			 
			 거주지를 선택 <br />
			 <select name="city" id="city" size="1">
			 	<option value="seoul">서울</option>
			 	<option value="gyunggi">경기</option>
			 	<option value="incheon">인천</option>
			 	<option value="suwon">수원</option>
			 </select> <br />
			 <input type="submit" value="전송" />
			 <input type="reset" value="취소" />
		</fieldset>
	</form>
	
</body>
</html>