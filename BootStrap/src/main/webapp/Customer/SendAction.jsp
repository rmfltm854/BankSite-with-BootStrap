<%@page import="java.io.PrintWriter"%>
<%@page import="Costomer.customerDAO"%>
<%@page import="Costomer.customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	String UID = request.getParameter("ID");
	
	String MONEY = request.getParameter("MONEY");
	int Umoney = Integer.parseInt(MONEY);
	customerDAO dao  = new customerDAO();
	customer cus = new customer();
	String a = (String)session.getAttribute("UserID");
	cus.setID(a);
	cus.setUID(UID);
	cus.setUMONEY(Umoney);
	
	
	int result = dao.SendMoney(cus);
	if(result == 1){
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('계좌이체성공');location.href='UserMenu.jsp';</script>");
	}else if(result == -1){
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('잔액부족');location.href='SendMoney.jsp';</script>");
		
	}else{
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('계좌이체실패');location.href='SendMoney.jsp';</script>");
		
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