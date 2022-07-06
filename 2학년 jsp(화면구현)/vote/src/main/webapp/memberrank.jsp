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
<title>memberrank</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<section style="position: fixed; top: 100px; left: 0px; right:0; width: 100%; height: 100%; background-color: lightgray;">
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
    String sql = "select distinct m.m_no, m_name, count(v.m_no) from tbl_member_202005 m, tbl_vote_202005 v where m.m_no=v.m_no group by(m.m_no, m_name) order by(count(v.m_no)) desc";
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
<!-- select distinct m.m_no, m_name, count(v.m_no) from tbl_member_202005 m, tbl_vote_202005 v where m.m_no=v.m_no group by(m.m_no, m_name); -->

<jsp:include page="footer.jsp"/>
</body>
</html>