<%@page import="java.sql.*"%>
<%@page import="DB.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동아리 등록</title>
</head>
<body>
<script type="text/javascript" src="checkClub.js" charset="utf-8"></script>
	<jsp:include page="header.jsp" />
	<%
	Connection conn=null;
	Statement stmt=null;
	String clubno="";
	
	try {
		conn=Util.getConnection();	// db 연결
		stmt = conn.createStatement();	// sql 실행
		String sql ="SELECT MAX(clubnumber)+1 clubno FROM clubmember";
		ResultSet rs = stmt.executeQuery(sql);	// stmt로 sql 실행
		rs.next();
		clubno = rs.getString("clubno");
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	
    <jsp:include page="nav.jsp" />

	<form action="action.jsp" method ="post" name="frm">
	<input type="hidden" name="mode" value="clubinsert">
		<table class="table table-bordered" style="margin-top: 100px; width: 60%; text-align: center; margin-left: auto; margin-right: auto;">
			<tr>
				<td>등록번호</td>
				<td><input type="text" name="clubnumber" value="<%=clubno %>" style="width: 100%" readonly></td>
			</tr>
			<tr>
				<td>동아리 이름</td>
				<td><input type="text" name="clubname" style="width: 100%"></td>
			</tr>
			<tr>
				<td>동아리 전공</td>
				<td><input type="text" name="clubmajor" style="width: 100%"></td>
			</tr>
			<tr>
				<td>동아리 부장</td>
				<td><input type="text" name="clubdirector" style="width: 100%"></td>
			</tr>
		</table>
	</form>
	
	<div style="position: relative; top: 75px; height display: inline-block; text-align: center">
        <button type="button" class="btn btn-lg btn-primary" onclick="addClubCheck()">등록하기</button>
    </div>
</body>
</html>