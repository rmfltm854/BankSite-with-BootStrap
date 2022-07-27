<%@page import="Costomer.customer"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 홈페이지</title>
 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

</head>
<body>
<style>
	body{
		background-image:url('https://cdn.clien.net/web/api/file/F01/12962783/1d9084c095649c.jpg?w=100000&h=300000');
		background-repeae:no-repeat;
		background-size:cover; 
	}
</style>
<nav class="navbar navbar-expand-lg  bg-dark navbar-dark ">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">고객 메뉴</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="UserMenu.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="InputMoney.jsp">입금</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="FindMoney.jsp">계좌잔액조회</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href = "SendMoney.jsp">계좌이체</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <%= (String)session.getAttribute("UserID") + "님"%>
          </a>
          <ul class="dropdown-menu">
          	
            <li><a class="dropdown-item" href="FindInfo.jsp">내정보</a></li>
            <li><a class="dropdown-item" href="LogOut.jsp">LogOut</a></li>
            
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>