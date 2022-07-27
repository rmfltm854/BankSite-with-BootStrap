<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>로그인</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3;">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<main class="col-md-6 col-lg-12">
  <form action = "UserLogin.jsp" method = post>
    <img class="mb-4" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MTRfMTkw%2FMDAxNjI4OTI0MTMxMDk2.lRPDqYo7tPhCwjxFEgfcW7l2TyRbsi10YpP-uTTOmYog.C3hpmNFa2jv37qmOLJFPb9ztuAVYv_0CNtM-k12bdzog.JPEG.stockout123%2F%25B4%25D9%25BF%25EE%25B7%25CE%25B5%25E5_%25A3%25A82%25A3%25A9.jpeg&type=a340" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">손님 로그인</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" placeholder="아이디입력" name = "ID">
      <label for="floatingInput">아이디</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name = "PW">
      <label for="floatingPassword">비밀번호</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> 회원정보 저장
      </label>
    </div>
    <button class="w-50 btn btn-lg btn-primary"  type="submit">로그인</button>
    
  </form>
  <form action = "JoinCustomer.jsp" method = post>
  	<button class="w-50 btn btn-lg btn-light"  type="submit">회원가입</button>
  </form>
</main>


   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>