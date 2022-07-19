<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name = "viewport" content="width-device-width", initial-scale="1">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel = "stylesheet" href="css/bootstrap.css">
<link rel = "stylesheet" href="css/custom.css">
<title>JSP게시판 웹사이트</title>
</head>
<body>

	<%
	//메인페이지로 이동했을때 세션에 값이 담겨있는지 체크
	String userID = null;
	if(session.getAttribute("user_id") != null){
		userID = (String)session.getAttribute("user_id");
	}
	
	%>

<nav class="navbar-default"> <!--  네비게이션 -->
		<div class="navbar-header">
		
		<button type = "button" class="navbar-togglecollapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expander="false">
				
				<!-- 이 세줄은 화면이 좁아지면 우측에 나타난다. -->
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
		</button>
		<!-- 상단 바에 제목이 나타나고 클릭하면  main페이지로 이동 -->
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		
		<!--  게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div  class="collapse navbar-collapse" id = "bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a><li>
				<li class = "active"><a href="bbs.jsp">게시판</a><li>
				</ul>
				<%
					//로그인 하지 않았을떄 보여지는 화면
					if(userID == null){
				%>
				<!-- 헤더우측에 나타나는 드랍다운영역 -->
				<ul class="nav navbar-nav navbar-right">
						<li class = "dropdown">
								<a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expander="false">접속하기<span class="caret"></span></a>
								<!-- 드랍다운 아이템 영역 -->
								<ul class= "dropdown-menu">
										<li><a href="login.jsp">로그인</a></li>
										<li><a href = "join.jsp">회원가입</a>
								
								</ul>
						</li>
				</ul>
				<%
					//로그인이 되어있는 상태에서 보여주는 화면
					}else{				
				%>
				<!-- 헤더우측에나타나는 드랍다운영역 -->
				<ul class="nav navbar-nav navbar-right">
						<li class = "dropdown">
								<a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expander="false">회원관리<span class="caret"></span></a>
								<!-- 드랍다운 아이템 영역 -->
								<ul class= "dropdown-menu">
										<li><a href="logoutAction.jsp">로그아웃</a></li>
								
								</ul>
						</li>
				</ul>
				<%
					}
				%>
		</div>
		
	</nav>
	<!--  네비게이션 영역 끝 -->
	
	<!--  게시판영역 -->
	<div class = "container">
		<div class = "row">
		<form action = "writeAction.jsp" method = "post">
			<table class="table table-striped" style="text-allign:center; border : 1px solid #dddddd">
					<thead>
							<tr>
								<th colspan="2" style="background-color:#eeeeee; text-align: center;">게시판 글쓰기 양식</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type = "text" class = "form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
							</tr>
							<tr>
								<td><textarea class = "form-control" placeholder="글 내용" name="bbsContent" maxlength="2048"style = "height : 350px;"></textarea></td>
								
							</tr>
						</tbody>
					</table>
					<!-- 글쓰기 버튼 생성 -->
					<input type = "submit" class = "btn btn-primary pull-right" value = "글쓰기">
				</form>
					
			</div>
		</div>
			
			<!-- 게시판 글쓰기 영역 끝 -->
			
			<!-- 부트스트랩 참조 영역 -->
	
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>

</body>
</html>