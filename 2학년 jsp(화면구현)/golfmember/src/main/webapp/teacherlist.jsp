<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>teacherlist</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; top: 90px; left: 0; right: 0;">
<h2 style="text-align: center;">강사매출현황</h2>
<form style="display: flex; justify-content: center; align-items: center; text-align: center">
<table border="1">
<tr>
<td>강사코드</td>
<td>강의명</td>
<td>강사명</td>
<td>총매출</td>
</tr>

<%
Connection conn = Util.getConnection();
String sql = "select t.teacher_code, t.class_name, t.teacher_name, sum(c.TUTION) from tbl_teacher_202201 t, tbl_class_202201 c where t.teacher_code = c.teacher_code group by(t.teacher_code, t.teacher_name, t.class_name) order by teacher_code";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet res = pstmt.executeQuery();

while(res.next()) {
	String won = res.getString(4);
	String don = "₩"+won.substring(0, 3)+","+won.substring(3);
	
	%>
	<tr>
	<td><%=res.getString(1) %></td>
	<td><%=res.getString(2) %></td>
	<td style="text-align: right;"><%=res.getString(3) %></td>
	<td style="text-align: right;"><%=don %></td>
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