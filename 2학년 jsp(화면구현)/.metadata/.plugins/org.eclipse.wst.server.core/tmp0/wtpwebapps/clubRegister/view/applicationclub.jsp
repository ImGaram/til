<%@page import="java.sql.*"%>
<%@page import="DB.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동아리 신청</title>
</head>
<body>
<script type="text/javascript" src="check.js" charset="utf-8"></script>
	<jsp:include page="header.jsp" />
	<%
	Connection conn=null;
	Statement stmt=null;
	String custno="";
	
	try {
		conn=Util.getConnection();	// db 연결
		stmt = conn.createStatement();	// sql 실행
		String sql ="SELECT MAX(studentno)+1 custno FROM clublist";
		ResultSet rs = stmt.executeQuery(sql);	// stmt로 sql 실행
		rs.next();
		custno = rs.getString("custno");
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	
    <jsp:include page="nav.jsp" />

	<form action="action.jsp" method ="post" name="frm">
	<input type="hidden" name="mode" value="insert">
		<table class="table table-bordered" style="margin-top: 100px; width: 60%; text-align: center; margin-left: auto; margin-right: auto;">
			<tr>
				<td>등록번호</td>
				<td><input type="text" name="studentno" value="<%=custno %>" style="width: 100%" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" style="width: 100%"></td>
			</tr>
			<tr>
				<td>등록하고 싶은 동아리</td>
				<td><input type="text" name="club" style="width: 100%"></td>
			</tr>
			<tr>
				<td>전공</td>
				<td><input type="text" name="major" style="width: 100%"></td>
			</tr>
		</table>
	</form>
	
	<div style="position: relative; top: 75px; height display: inline-block; text-align: center">
        <button type="button" class="btn btn-lg btn-primary" onclick="return addCheck()">신청하기</button>
    </div>
</body>
</html>