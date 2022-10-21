<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" src="check.js"></script>

<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; left: 0; top: 80px; right: 0;">
<h2 style=" text-align: center;">투표하기</h2>

<form method="post" action="action.jsp" name="frm" style=" display: flex; align-items: center; justify-content: center;
text-align: center">
<input type="hidden" name="mode" value="insert">
<table border="1">

<tr>
	<td>주민번호</td>
	<td><input type="text" name="jumin">예: 8906154154726</td>
</tr>
<tr>
	<td>성명</td>
	<td><input type="text" name="name" style="width:100%"></td>
</tr>
<tr>
	<td>투표번호</td>
	<td>
		<select name="no" style="width:100%">
			<option value=""></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select></td>
</tr>
<tr>
	<td>투표시간</td>
	<td><input type="text" name="time" style="width:100%"></td>
</tr>
<tr>
	<td>투표장소</td>
	<td><input type="text" name="area" style="width:100%"></td>
</tr>
<tr>
	<td>유권자확인</td>
	<td><input type="radio" value="Y" name="vote">확인 <input type="radio" value="N" name="vote">미확인</td>
</tr>
<tr>
	<td colspan="2">
	<input type="button" value="투표하기" onclick="return voteCheck()">
	<input type="button" value="다시하기" onclick="return back()"> 
	</td>
</tr>

</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>