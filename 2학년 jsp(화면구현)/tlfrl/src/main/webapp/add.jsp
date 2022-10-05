<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBPKG.Util"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; top: 80px; left: 0; right: 0">
<h2 style="text-align: center;">회원 등록</h2>
<form name="frm" action="action.jsp" style="display: flex; align-items: center; justify-content: center; text-align: center;">
<input type="hidden" name="mode" value="insert">
<table border="1">
<%
request.setCharacterEncoding("utf-8");
Connection conn = Util.getConnection();
String sql = "select max(custno) +1 from tbl_member_02";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet res = pstmt.executeQuery();

res.next();
%>
<tr>
<td>회원번호(자동발생)</td>
<td><input type="text" name="custno" readonly="readonly" value="<%= res.getString(1) %>"></td>
</tr>
<tr>
<td>회원성명</td>
<td><input type="text" name="custname"></td>
</tr>
<tr>
<td>회원전화</td>
<td><input type="text" name="phone"></td>
</tr>
<tr>
<td>회원주소</td>
<td><input type="text" name="address"></td>
</tr>
<tr>
<td>가입일자</td>
<td><input type="text" name="joindate"></td>
</tr>
<tr>
<td>고객등급[A: VIP, B: 일반, C: 직원]</td>
<td><input type="text" name="grade"></td>
</tr>
<tr>
<td>도시코드</td>
<td><input type="text" name="city"></td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="등록" name="regist" onclick="return check()">
<input type="button" value="조회" name="regist" onclick="return see()">
</td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>