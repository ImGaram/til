<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBPKG.Util"%>
<%@page import="java.sql.Connection"%>
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

String mode = request.getParameter("mode");

String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

Connection conn = Util.getConnection();
String sql = "";
PreparedStatement pstmt = null;

try {
	switch(mode) {
	case "insert":
		sql = "insert into member_tbl_02 values(?,?,?,?,TO_DATE('"+ joindate +"', 'yyyy-MM-dd'),?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, custno);
		pstmt.setString(2, custname);
		pstmt.setString(3, phone);
		pstmt.setString(4, address);
		pstmt.setString(5, grade);
		pstmt.setString(6, city);
		
		pstmt.executeQuery();
		%>
		<jsp:forward page="list.jsp"></jsp:forward>
		<%
		break;
	case "modify":
		sql = "update member_tbl_02 set custno=?,custname=?,phone=?,address=?,joindate=TO_DATE('"+ joindate +"', 'yyyy-MM-dd'),grade=?,city=? where custno="+custno;				
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, custno);
		pstmt.setString(2, custname);
		pstmt.setString(3, phone);
		pstmt.setString(4, address);
		pstmt.setString(5, grade);
		pstmt.setString(6, city);
		
		pstmt.executeUpdate();
		%>
		<jsp:forward page="list.jsp"></jsp:forward>
		<%
		break;
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>