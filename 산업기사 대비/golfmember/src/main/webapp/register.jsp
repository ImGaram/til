<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; weight: 100%; top: 140px; left: 0; right: 0; height: 100%; background-color: lightgray">
<h2 style="text-align: center">수강신청</h2>
<form action="action.jsp" name="frm" style="display:flex; justify-content: center; align-items: center;">
<input type="hidden" name="mode" value="insert">
<table border="1">
<tr>
<td>수강월</td>
<td><input type="text" name="registmonth">2022년 03월 예)202203</td>
</tr>
<tr>
<td>회원명</td>
<td><select inputmode="text" name="name" style="width: 80%" onchange="onchange1()">
<option value="">회원명</option>
<option value="10001">홍길동</option>
<option value="10002">장발장</option>
<option value="10003">임꺽정</option>
<option value="20001">성춘향</option>
<option value="20002">이몽룡</option>
</select></td>
</tr>
<tr>
<td>회원번호</td>
<td><input type="text" name="num" readonly>예)10001</td>
</tr>
<tr>
<td>강의장소</td>
<td><select inputmode="text" style="width: 80%" name="place">
<option value="">강의장소</option>
<option value="서울본원">서울본원</option>
<option value="성남본원">성남본원</option>
<option value="대전본원">대전본원</option>
<option value="부산본원">부산본원</option>
<option value="대구본원">대구본원</option>
</select></td>
</tr>
<tr>
<td>강의명</td>
<td><select inputmode="text" style="width: 80%" name="classname" onchange="onchange2()">
<option value="">강의신청</option>
<option value="100000">초급반</option>
<option value="200000">중급반</option>
<option value="300000">고급반</option>
<option value="400000">심화반</option>
</select></td>
</tr>
<tr>
<td>수강료</td>
<td><input inputmode="text" name="money">원</td>
</tr>
<tr style="text-align:center;">
<td colspan="2">
<input type="button" onclick="check()" value="수강신청">
<input type="button" onclick="restart()" value="다시하기">
</td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>