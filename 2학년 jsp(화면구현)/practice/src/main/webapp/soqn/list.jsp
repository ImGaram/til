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
<section style="position:fixed; top:70px; left:0; width:100%; height:100%; background:lightgray;">
<h2 style="text-align:center">조회</h2>
<form style="display:flex; justify-content: center; text-align:center;">
<table border="1">
<tr>
	<td>이름</td>
	<td>나이</td>
	<td>직업</td>
</tr>
<%
request.setCharacterEncoding("utf-8");

try {
	Connection conn = Util.getConnection();
	String sql = "SELECT * FROM temp";
	
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
	
	while(rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("username") %></td>
			<td><%=rs.getString("age") %></td>
			<td><%=rs.getString("job") %></td>
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