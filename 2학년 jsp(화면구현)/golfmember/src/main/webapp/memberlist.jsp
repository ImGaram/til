<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberlist</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; top: 90px; left: 0; right: 0;">
<h2 style="text-align: center;">회원정보조회</h2>
<form style="display: flex; justify-content: center; align-items: center; text-align: center">
<table border="1">
<tr>
<td>수강월</td>
<td>회원번호</td>
<td>회원명</td>
<td>강의명</td>
<td>강의장소</td>
<td>수강료</td>
<td>등급</td>
</tr>

<%
Connection conn = Util.getConnection();
String sql = "select c.regist_month, c.c_no, m.c_name, t.class_name, c.class_area, c.TUTION, m.grade from tbl_teacher_202201 t, tbl_member_202201 m, tbl_class_202201 c where c.c_no = m.c_no and c.teacher_code = t.teacher_code";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet res = pstmt.executeQuery();

while(res.next()) {
	String day = res.getString(1);
	String year = day.substring(0, 4)+"년"+day.substring(4)+"월";
	
	String won = res.getString(6);
	String don = "₩"+won.substring(0, 3)+","+won.substring(3);
	
	%>
	<tr>
	<td><%=year %></td>
	<td><%=res.getString(2) %></td>
	<td><%=res.getString(3) %></td>
	<td><%=res.getString(4) %></td>
	<td><%=res.getString(5) %></td>
	<td><%=don %></td>
	<td><%=res.getString(7) %></td>
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