<%@page import="DB.Util"%>
<%@page import="java.sql.*" %>
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
String mode = request.getParameter("mode");

String studentno = request.getParameter("studentno");
String name = request.getParameter("name");
String club = request.getParameter("club");
String major = request.getParameter("major");

String clubnumber = request.getParameter("clubnumber");
String clubname = request.getParameter("clubname");
String clubmajor = request.getParameter("clubmajor");
String clubdirector = request.getParameter("clubdirector");

try {
	Connection conn = Util.getConnection();
	PreparedStatement pstmt = null;
	String sql="";
	
	switch(mode) {
	case "insert":
		sql = "INSERT INTO clublist VALUES(?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, studentno);
		pstmt.setString(2, name);
		pstmt.setString(3, club);
		pstmt.setString(4, major);
		
		pstmt.executeUpdate();
		%>
		<jsp:forward page="clublist.jsp"></jsp:forward>
		<%
		break;
	
	case "clubinsert":
		sql = "insert into clubmember values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, clubnumber);
		pstmt.setString(2, clubname);
		pstmt.setString(3, clubmajor);
		pstmt.setString(4, clubdirector);
		
		pstmt.executeUpdate();
		%>
		<jsp:forward page="clubmember.jsp"></jsp:forward>
		<%
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>