<%@page import="DB.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>동아리 목록</title>
</head>
<body>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    
    <%
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    try {
    	conn=Util.getConnection();	// db 연결
		  stmt = conn.createStatement();	// sql 실행
		  String sql ="SELECT * FROM clublist";
        rs = stmt.executeQuery(sql);	// stmt로 sql 실행
    } catch(Exception e) {
    	e.printStackTrace();
    }
    %>
    <table class="table" style="margin-top: 100px; margin-left: auto; margin-right: auto; width: 70%;">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">이름</th>
          <th scope="col">동아리</th>
          <th scope="col">전공</th>
        </tr>
      </thead>
      <tbody>
      
      <%
      try{
    	  while(rs.next()) {
      %>
        <tr>
          <th scope="row"><%=rs.getString("studentno") %></th>
          <td><%=rs.getString("name") %></td>
          <td><%=rs.getString("club") %></td>
          <td><%=rs.getString("major") %></td>
        </tr>
      <%
    	  }
      } catch(Exception e){
    	  e.printStackTrace();
      }
      %>
      </tbody>
    </table>
    

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>