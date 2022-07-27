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
    <title>Checkout example · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/checkout/">

    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
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
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
<form action = "Join.jsp" method = post>  
<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h2>회원 가입</h2>
      <p class="lead">MS은행을 이용해주셔서 감사합니다.</p>
    
      <div class="col-md-12 col-lg-12">
        <h4 class="mb-3">회원 정보입력</h4>
          <div class="row g-3">
            <div class="col-sm-12">
              <label for="이름" class="form-label">이름</label>
              <input type="text" class="form-control" id="firstName" name = "UNAME" placeholder="이름"  required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">ID</label>
              <div class="input-group has-validation">
                <span class="input-group-text">ID</span>
                <input type="text" class="form-control" id="username"  name = "ID" placeholder="아이디 입력" required >
              <div class="invalid-feedback">
                  아이디를 입력해주세요
                </div>
              </div>
            </div>

            <div class="col-12">
            <label for="username" class="form-label">PW</label>
              <input type="password" class="form-control" id="password"  name = "PASSWORD" placeholder="비밀번호 입력" required>
              <div class="invalid-feedback">
               비밀번호를 입력해주세요
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">계좌번호</label>
              <input type="text" class="form-control" id="BankNumber" name = "BANKNUMBER" placeholder="계좌입력" required>
              <div class="invalid-feedback">
                계좌 필수입력
              </div>
            </div>

          <button class="w-100 btn btn-primary btn-lg" type="submit">회원가입</button>
      </div>
    </div>
    
    </main>
    </div>
    </form>
 

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; MS은행</p>
  </footer>




    

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>