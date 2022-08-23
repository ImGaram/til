<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>candidateref</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="width: 100%; height: 100%; top: 90px; left: 0px; right: 0px; background-color: lightgray; position: fixed">
<h2 style="text-align: center">후보 조회</h2>
<form style="display: flex; justify-content: center; align-items: center; text-align: center;">
<table border="1">
	<tr>
	<td>후보번호</td>
	<td>성명</td>
	<td>소속정당</td>
	<td>학력</td>
	<td>주민번호</td>
	<td>지역구</td>
	<td>대표전화</td>
	</tr>
	  <%
request.setCharacterEncoding("UTF-8");
try{
    Connection conn = Util.getConnection();
    String sql = "select m.m_no, m.m_name, p.p_name, m.p_school, m.m_jumin, m.m_city, p.p_tel1, p.p_tel2, p.p_tel3 " +
                 "from tbl_member_202005 m, tbl_party_202005 p " +
                 "where m.p_code = p.p_code order by m.p_code";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    while(rs.next()){
        String school = rs.getString(4);
        String tel = (rs.getString(7)+"-"+rs.getString(8)+"-"+rs.getString(9)).replace(" ", "");;
        String jumin = rs.getString(5).substring(0,7)+"-"+rs.getString(5).substring(7,13);
        switch(school){
        case "1" : school = "고졸"; break;
        case "2" : school = "학사"; break;
        case "3" : school = "석사"; break;
        case "4" : school = "박사"; break;
        }
%>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(3) %></td>
                    <td><%=school %></td>
                    <td><%=jumin %></td>
                    <td><%=rs.getString(6) %></td>
                    <td><%=tel%></td>
                </tr>
<%
                } } catch(Exception e){ e.printStackTrace(); } %>

            </table>
        </form>
    </section>


    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>