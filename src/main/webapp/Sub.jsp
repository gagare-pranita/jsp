<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int Num1,Num2,sub; %>
<% Num1=Integer.parseInt(request.getParameter("num1"));
    Num2=Integer.parseInt(request.getParameter("num2"));
    sub=Num1-Num2;%>
    <h1> Sub of <%=Num1 %> and <%=Num2 %> =<%=sub %></h1>
</body>
</html>