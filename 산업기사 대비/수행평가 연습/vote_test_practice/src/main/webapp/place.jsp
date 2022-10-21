<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>place</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; top: 80px; left: 0px; right:0; width: 100%; height: 100%; background-color: lightgray;">
	<h2 style="text-align: center; font-weight: 500">투표검수조회</h2>

	<form
		style="display: flex; justify-content: center; align-items: center; text-align: center">
		<table border="1">
			<tr>
				<td>성명</td>
				<td>생년월일</td>
				<td>나이</td>
				<td>성별</td>
				<td>후보번호</td>
				<td>투표시간</td>
				<td>유권자확인</td>
			</tr>

<%
request.setCharacterEncoding("UTF-8");

try{
	Connection conn = Util.getConnection();
	String sql = "select v_name, v_jumin, m_no, v_time, v_confirm " +
				 "from tbl_vote_202205 " +
				 "where v_area = '제1투표장'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
	boolean check = rs.getString(2).substring(6,7).equals("1") || rs.getString(2).substring(6,7).equals("2");
	String birth = (check ? "19" : "20")+rs.getString(2).substring(0,2)+"년 "+rs.getString(2).substring(2,4)+"월 "+rs.getString(2).substring(4,6)+"일";
	String age = "만 "+(check?120-Integer.valueOf(rs.getString(2).substring(0,2)):20 - Integer.valueOf(rs.getString(2).substring(0,2)))+"세";
	String gender = rs.getString(2).substring(6,7).equals("1") || rs.getString(2).substring(6,7).equals("3") ? "남" : "여";
	String time = rs.getString(4).substring(0,2)+":"+rs.getString(4).substring(2,4);
	String vote = rs.getString(5).equals("Y") ? "확인" : "미확인";
%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=birth %></td>
					<td><%=age %></td>
					<td><%=gender %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=time %></td>
					<td><%=vote %></td>
				</tr>
				<%

				} } catch(Exception e){ e.printStackTrace(); } %>

			</table>
		</form>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>