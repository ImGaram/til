<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; weight: 100%; top: 140px; left: 0; right: 0; height: 100%; background-color: lightgray">
<h2 style="text-align: center">수강신청</h2>
</section>
<form action="action.jsp" name="frm" style="display:flex; justify-content: center; align-items: center; text-align:center;">
<table border="1">
<tr>
<td>수강월</td>
<td><input type="text" name="registmonth" readonly>2022년 03월 예)202203</td>
</tr>
<tr>
<td>회원명</td>
<td></td>
</tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>