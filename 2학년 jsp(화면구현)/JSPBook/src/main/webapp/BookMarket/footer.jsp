<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
</head>
<body>
<%! String b = "Welcome to Web Market";
    
    String makeItLower(String data) {
        return data.toString();
    } %>
    
    <div style="height: 80px; text-align: center; font-size: 25px; padding-top: 30px;">
        <%-- <%=makeItLower(b)%> --%>
        <p>Welcome to Web Market!</p>
    </div>
    <div style="border-top: 1px solid gray;">
        <div style="height: 100px; padding-left: 60px; padding-top: 40px;">
            <div>ⓒ BookMarket</div>
        </div>
        <br><br><br><br><br>
    </div>
</body>
</html>