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
<title>동아리 관리</title>
</head>
<body>
<wrap>
    <jsp:include page="header.jsp" />
    <jsp:include page="nav.jsp" />
    
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="position: relative; width: 50%; left: 360px; display: flex; top: 50px; height: 500px">
      <div class="carousel-inner mx-auto">
        <div class="carousel-item active">
          <img src="img1.png" class="d-block w-100" alt="사진1">
        </div>
        <div class="carousel-item">
          <img src="img3.png" class="d-block w-100" alt="사진2">
        </div>
        <div class="carousel-item">
          <img src="img2.png" class="d-block w-100" alt="사진3">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    
    <div style="position: relative; top: 75px; height display: inline-block; text-align: center">
        <button type="button" class="btn btn-lg btn-primary" onclick="location='clublist.jsp'">동아리 목록</button>
        <button type="button" class="btn btn-secondary btn-lg" onclick="location = 'applicationclub.jsp'">동아리 신청</button>
    </div>
</wrap>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>