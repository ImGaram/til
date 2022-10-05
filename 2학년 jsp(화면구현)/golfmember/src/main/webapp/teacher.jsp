<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>teacher</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; top: 90px; left: 0; right: 0;">
<h2 style="text-align: center;">강사조회</h2>
<form style="display: flex; justify-content: center; align-items: center; text-align: center">
<table border="1">
<tr>
<td>강사코드</td>
<td>강사명</td>
<td>강의명</td>
<td>수강료</td>
<td>강사자격취득일</td>
</tr>
<%
Connection conn = Util.getConnection();
String sql = "select * from TBL_TEACHER_202201";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet res = pstmt.executeQuery();

while(res.next()) {
	String won = res.getString(3);
	String don = "₩"+won.substring(0, 3)+","+won.substring(3);
	
	String day = res.getString(4);
	String year = day.substring(0, 4)+"년"+day.substring(4, 6)+"월"+day.substring(6)+"일";
	%>
	<tr>
	<td><%=res.getString(1) %></td>
	<td><%=res.getString(5) %></td>
	<td><%=res.getString(2) %></td>
	<td><%=don %></td>
	<td><%=year %></td>
	</tr>
	<%
}
%>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>