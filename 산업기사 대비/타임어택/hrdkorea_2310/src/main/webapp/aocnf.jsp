<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aocnf</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; height: 100%; top: 70px; left: 0; right: 0; background-color: lightgray;">
<h2 style="text-align: center">회원매출 조회</h2>
<form action="action.jsp" name="frm" style="display: flex; justify-content: center; align-items: center; text-align: center">
<input type="hidden" name="mode" value="insert">
<table border="1">
<tr>
<td>회원번호</td>
<td>회원성명</td>
<td>고객등급</td>
<td>매출</td>
</tr>

<% 
request.setCharacterEncoding("utf-8");

try {
	Connection conn = Util.getConnection();
	String sql = "select m.custno, m.custname, m.grade, sum(d.price) as 합계 from member_tbl_02 m, money_tbl_02 d where m.custno = d.custno group by m.custno, m.custname, m.grade order by sum(d.price) desc";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet res = pstmt.executeQuery();

	while(res.next()) {
		String grade = res.getString(3);
		switch (grade) {
		case "A":
			grade = "VIP";
			break;
		case "B":
			grade = "일반";
			break;
		}
		
		%>
		<tr>
		<td><%=res.getString(1) %></td>
		<td><%=res.getString(2) %></td>
		<td><%=grade %></td>
		<td><%=res.getString(4) %></td>
		</tr>
		<%
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>

</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>