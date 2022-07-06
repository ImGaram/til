<%@page import="org.apache.tomcat.dbcp.dbcp2.PStmtKey"%>
<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");

Connection conn = null;
Statement stmt = null;

String mode = request.getParameter("mode");

String jumin = request.getParameter("jumin");
String name= request.getParameter("name");
String no = request.getParameter("no");
String time = request.getParameter("time");
String area= request.getParameter("area");
String vote= request.getParameter("vote");

try{
	conn = Util.getConnection();
	PreparedStatement pstmt = null;
	String sql="";
	
	switch(mode){
		
	case "insert":
		
		switch(vote) {
		case "확인": vote="Y"; break;
		case "미확인": vote="N"; break;
		}
		
		sql="insert into tbl_vote_202005 values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, jumin);
		pstmt.setString(2, name);
		pstmt.setString(3, no);
		pstmt.setString(4, time);
		pstmt.setString(5, area);
		pstmt.setString(6, vote);
		
		pstmt.executeUpdate();
%>
<jsp:forward page="votelist.jsp"></jsp:forward>
<%
		break;
	}
}

catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>