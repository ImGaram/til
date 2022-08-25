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
<title>member info</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; weight: 100%; top: 140px; left: 0; right: 0; height: 100%; background-color: lightgray">
<h2 style="text-align: center">회원정보조회</h2>
<form action="action.jsp" style="display:flex; justify-content: center; align-items: center; text-align:center;">
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
request.setCharacterEncoding("utf-8");
try {
	Connection conn = Util.getConnection();
	String sql = "select c.regist_month, m.c_no, m.c_name, t.class_name, c.class_area, c.tution, m.grade from TBL_MEMBER_202201 m, TBL_CLASS_202201 c, TBL_TEACHER_202201 t where m.c_no = c.c_no and t.teacher_code = c.teacher_code";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet res = pstmt.executeQuery(sql);
	
	while(res.next()) {
		String date = res.getString(1);
		String putDate = date.substring(0,4)+"년"+date.substring(4)+"월";
		
		String money = res.getString(6);
		String putMoney = "₩"+money.substring(0, 3)+","+money.substring(3);
		
		%>
		<tr>
		<td><%=putDate %></td>
		<td><%=res.getString(2) %></td>
		<td><%=res.getString(3) %></td>
		<td><%=res.getString(4) %></td>
		<td><%=res.getString(5) %></td>
		<td><%=putMoney %></td>
		<td><%=res.getString(7) %></td>
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