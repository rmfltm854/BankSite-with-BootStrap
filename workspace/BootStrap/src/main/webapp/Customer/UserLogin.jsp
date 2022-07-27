<%@page import="java.io.PrintWriter"%>
<%@page import="Costomer.customerDAO"%>
<%@page import="Costomer.customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String ID = request.getParameter("ID");
    String PW = request.getParameter("PW");
    customer cus =  new customer();
    
    customerDAO dao = new customerDAO();
    int result = dao.login(ID, PW);
   
    if(result == 1){
    	
    	PrintWriter writer = response.getWriter();
		writer.println("<script>alert('로그인성공');location.href='UserMenu.jsp';</script>");
		session.setAttribute("UserID",ID);
		
		
    }else{
    	PrintWriter writer = response.getWriter();
		writer.println("<script>alert('로그인실패');location.href='CustomerLogin.jsp';</script>");
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