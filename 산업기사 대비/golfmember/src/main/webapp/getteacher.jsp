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
<title>get teacher</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; weight: 100%; top: 140px; left: 0; right: 0; height: 100%; background-color: lightgray">
<h2 style="text-align: center">강사조회</h2>
<form action="action.jsp" name="frm"  style="display:flex; justify-content: center; align-items: center; text-align:center;">
<table border="1">
<tr>
<td>강사코드</td>
<td>강사명</td>
<td>강의명</td>
<td>수강료</td>
<td>강사자격취득일</td>
</tr>
<%
request.setCharacterEncoding("utf-8");

try {
	Connection conn = Util.getConnection();
	String sql="select * from TBL_TEACHER_202201";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet res = pstmt.executeQuery();
	
	while(res.next()) {
		// 2022 03 01 / 100,000
		String money = res.getString(3);
		String moneys = "₩"+money.substring(0, 3)+","+money.substring(3);
		String day = res.getString(4);
		String date = day.substring(0,4)+"년"+day.substring(4, 6)+"월"+day.substring(6)+"일";
		
		%>
		
		<tr>
		<td><%=res.getString(1) %></td>
		<td><%=res.getString(5) %></td>
		<td><%=res.getString(2) %></td>
		<td><%=moneys %></td>
		<td><%=date %></td>
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