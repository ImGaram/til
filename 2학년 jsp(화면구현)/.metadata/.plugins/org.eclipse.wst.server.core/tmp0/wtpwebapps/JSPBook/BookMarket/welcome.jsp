<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>
<%! String a = "웹 쇼핑몰에 오신 것을 환영합니다";
    String b = "Welcome to Web Market!";
    
    String makeItLower(String data) {
        return data.toString();
    } %>
<%! String tagline= "Welcome to Web Market!"; %>


<div style="position: absolute; top: 0px; left: 0px; height: 1000px; width: 100%; display: flex; flex-direction: column;">
    <header style="height: 40px; background-color: black; padding-top: 20px; color: white;">
        <div style="padding-left: 25px;">Home</div>
    </header>
    <div style="background-color: #e5e5e5; height: 320px; color: black; line-height: 320px; text-align: center;  font-size: 80px">
        <%=makeItLower(a)%>
    </div>
    <%-- <div style="height: 80px; text-align: center; font-size: 25px; padding-top: 30px;">
        <%=makeItLower(b)%>
    </div> --%>
    
    <div style="height: 80px; text-align: center; font-size: 25px; padding-top: 30px;">
        <h3>
            <%=tagline%>
        </h3>
        <% 
            Date day = new java.util.Date();
            String am_pm;
            int hour = day.getHours();
            int minute = day.getMinutes();
            int second = day.getSeconds();
            if (hour / 12 == 0) {
                am_pm = "AM";
            } else {
                am_pm = "AM";
                hour = hour - 12;
            }
            String CT = hour + ":" + minute + ":" + second + " " + am_pm;
            out.println("현재 접속 시각 : " + CT + "\n");
        %>
    </div>
    
    
    
    <div style="height: 100px; padding-left: 60px; padding-top: 90px;">
        <div>ⓒ WebMarket</div>
    </div>
</div>
</body>
</html>