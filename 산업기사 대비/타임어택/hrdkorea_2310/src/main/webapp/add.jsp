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
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; top: 70px; left: 0; right: 0; background-color: lightgray;">
<h2 style="text-align: center">회원등록</h2>
<form method="post" style="display: flex; justify-content: center; align-items: center; text-align: center" action="action.jsp" name="frm">
<input type="hidden" value="insert" name="mode">
<table border="1">

<%
request.setCharacterEncoding("utf-8");
Connection conn = Util.getConnection();
String sql = "select max(custno)+1 from member_tbl_02";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet res = pstmt.executeQuery();

res.next();
String custno = res.getString(1);
%>

<tr>
<td>회원번호(자동발생)</td>
<td><input type="text" name="custno" style="text-align: left;" value="<%=custno %>" readonly="readonly"></td>
</tr>
<tr>
<td>회원성명</td>
<td><input type="text" name="custname" style="text-align: left;"></td>
</tr>
<tr>
<td>회원전화</td>
<td><input type="text" name="phone" style="text-align: left;"></td>
</tr>
<tr>
<td>회원주소</td>
<td><input type="text" name="address" style="text-align: left;"></td>
</tr>
<tr>
<td>가입일자</td>
<td><input type="text" name="joindate" style="text-align: left;"></td>
</tr>
<tr>
<td>고객등급 [A: VIP, B: 일반, C: 직원]</td>
<td><input type="text" name="grade" style="text-align: left;"></td>
</tr>
<tr>
<td>도시코드</td>
<td><input type="text" name="city" style="text-align: left;"></td>
</tr>
<tr>
<td colspan="2">
<input type="button" name="regist" value="등록" onclick="return check()">
<input type="button" name="regist" value="조회" onclick="return modify()">
</td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>