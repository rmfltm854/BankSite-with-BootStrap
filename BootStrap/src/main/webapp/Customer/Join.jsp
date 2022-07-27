<%@page import="java.io.PrintWriter"%>
<%@page import="Costomer.customerDAO"%>
<%@page import="Costomer.customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
        			request.setCharacterEncoding("UTF-8");
                    response.setCharacterEncoding("UTF-8");
                    String ID = request.getParameter("ID");
                    String PW = request.getParameter("PASSWORD");
                    String UNAME = request.getParameter("UNAME");
                    String BANKNUMBER = request.getParameter("BANKNUMBER");
                    
                    customer CUS = new customer();
                	CUS.setBankNumber(BANKNUMBER);
                	CUS.setID(ID);
                	CUS.setPW(PW);
                	CUS.setUname(UNAME);
                    
                	customerDAO dao = new customerDAO();
                	
                	int result = dao.join(CUS);
                	
                	if(result == 1){
                		PrintWriter writer = response.getWriter();
                		writer.println("<script>alert('회원가입성공');location.href='CustomerLogin.jsp';</script>");
                		
                		
                		
                	}else{
                		out.println("실패");
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