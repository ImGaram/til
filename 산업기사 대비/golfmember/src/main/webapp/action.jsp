<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
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
request.setCharacterEncoding("utf-8");

Connection conn = null;
Statement stmt = null;

String registmonth = request.getParameter("registmonth");
String name = request.getParameter("name");
String num = request.getParameter("num");
String place = request.getParameter("place");
String classname = request.getParameter("classname");
String money = request.getParameter("money");

try {
	conn = Util.getConnection();
	PreparedStatement pstmt = null;
	
	String sql = "insert into TBL_CLASS_202201 values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, registmonth);
	pstmt.setString(2, num);
	pstmt.setString(3, place);
	pstmt.setString(4, money);
	pstmt.setString(5, name.substring(0, 3));
	
	pstmt.executeUpdate();
	
	%>
	
	<jsp:forward page="index.jsp"></jsp:forward>
	
	<%
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>