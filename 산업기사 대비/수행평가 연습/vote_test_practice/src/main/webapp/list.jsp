<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>list</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; width: 100%; height: 100%; background-color: lightgray; left: 0; top: 80px; right: 0;">
<h2 style=" text-align: center;">후보자등수</h2>
<form style="display: flex; justify-content: center; align-items: center; text-align: center">
<table border="1">
<tr>
<td>후보번호</td>
<td>성명</td>
<td>총투표건수</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
    Connection conn = Util.getConnection();
    String sql = "select distinct m.m_no, m_name, count(v.m_no) from tbl_member_202205 m, tbl_vote_202205 v where m.m_no=v.m_no group by(m.m_no, m_name) order by(count(v.m_no)) desc";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    
    while(rs.next()){
    	%>
    	<tr>
    	<td><%=rs.getString(1) %></td>
    	<td><%=rs.getString(2) %></td>
    	<td><%=rs.getString(3) %></td>
    	</tr>
    	<%
    }
} catch(Exception e) {
	
}
%>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>