<%@page import="java.io.PrintWriter"%>
<%@page import="Costomer.customer"%>
<%@page import="Costomer.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	String MONEY = request.getParameter("MONEY");
	int money = Integer.parseInt(MONEY);
	customer cus = new customer();
	cus.setMoney(money);
	cus.setID((String)session.getAttribute("UserID"));
	customerDAO dao = new customerDAO();
	int result = dao.InputMoney(cus);
	if(result == 1){
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('입금성공');location.href='UserMenu.jsp';</script>");
		
	}else if(result == -1){
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('입금실패');location.href='CustomerLogin.jsp';</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>