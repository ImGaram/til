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
<title>list</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; top: 80px; left: 0; right: 0">
<h2 style="text-align: center;">회원 조회</h2>
<form style="display: flex; align-items: center; justify-content: center; text-align: center;">
<table border="1">
<tr>
<td>회원번호</td>
<td>회원성명</td>
<td>전화번호</td>
<td>주소</td>
<td>가입일자</td>
<td>고객등급</td>
<td>거주지역</td>
</tr>
<%
request.setCharacterEncoding("utf-8");

try {
	Connection conn = Util.getConnection();
	String sql = "select * from tbl_member_02";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet res = pstmt.executeQuery();

	while(res.next()) {
		String grade = res.getString(6);
		switch(grade) {
		case "A":
			grade = "VIP";
			break;
		case "B":
			grade = "일반";
			break;
		case "C":
			grade = "직원";
			break;
		}
		
		%>
		<tr>
		<td><%= res.getString(1) %></td>
		<td><%= res.getString(2) %></td>
		<td><%= res.getString(3) %></td>
		<td><%= res.getString(4) %></td>
		<td><%= res.getDate(5) %></td>
		<td><%= grade %></td>
		<td><%= res.getString(7) %></td>
		</tr>
		<%
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>