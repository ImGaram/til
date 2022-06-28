<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="BookDto.Book" %>
<jsp:useBean id="bookDAO" class="BookDao.BookRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>books</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-5">도서 목록</h1>
        </div>
    </div>
    <%
        ArrayList<Book> listOfProducts = bookDAO.getAllBooks();
    %>
    <div class="container">
        <div class="column" style="width: 90vw;">
            <%
                for (int i=0; i<listOfProducts.size(); i++) {
                    Book book = listOfProducts.get(i);
            %>
            <div>
                <h5 style="margin-bottom: 20px; font-weight: 600;"><%=book.getName() %></h5>
                <p style="font-size: 13px;"><%=book.getDescription() %></p>
                <p style="font-size: 14px;"><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice()%></p>
                <hr>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>