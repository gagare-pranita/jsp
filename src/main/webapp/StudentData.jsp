<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fname=request.getParameter("fnmae");
String  mname=request.getParameter("mname");
String lname=request.getParameter("lname");

int Age=Integer.parseInt(request.getParameter("age"));



%>
<h1>GETTING THE INFORMATION:  First name is= <%=fname %> Middle name is =<%=mname %> Last name is =<%=lname %> age is=<%=Age %></h1>



</body>
</html>