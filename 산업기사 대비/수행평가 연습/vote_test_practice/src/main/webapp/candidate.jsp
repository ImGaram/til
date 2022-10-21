<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBPKG.Util"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>candidate</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; left: 0; top: 80px; right: 0;">
<h2 style="text-align: center;">후보조회</h2>

<form style="display: flex; justify-content: center; align-items: center;">
<table border="1">
<tr>
<td>후보번호</td>
<td>성명</td>
<td>소속정당</td>
<td>학력</td>
<td>주민번호</td>
<td>지역구</td>
<td>전화번호</td>
</tr>

<%
Connection conn = Util.getConnection();
String sql = "select m.m_no, m.m_name, p.p_name, m.p_school, m.m_jumin, m.m_city, p.p_tel1, p.p_tel2, p.p_tel3 from tbl_member_202205 m, tbl_party_202205 p where p.p_code=m.p_code";
PreparedStatement pstmt = conn.prepareStatement(sql);

ResultSet res = pstmt.executeQuery();

try {
	while(res.next()) {
		String tel = res.getString(7)+ "-" + res.getString(8)+"-"+res.getString(9);
		String jumin = res.getString(5).substring(0, 6)+"-"+res.getString(5).substring(6);
		
		String school = "";
		switch (res.getString(4)) {
		case "1": school = "고졸"; 
		break;
		case "2": school = "학사"; 
		break;
		case "3": school = "석사"; 
		break;
		case "4": school = "박사"; 
		break;
		}
		
		%>
		<tr>
		<td><%=res.getString(1) %></td>
		<td><%=res.getString(2) %></td>
		<td><%=res.getString(3) %></td>
		<td><%=school %></td>
		<td><%=jumin %></td>
		<td><%=res.getString(6) %></td>
		<td><%=tel %></td>
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