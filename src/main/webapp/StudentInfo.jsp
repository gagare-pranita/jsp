<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException" %>
<%@ page import ="java.util.*" %>
<%@page import="java.io.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String name,email, address ,add; long contact;%>
<%! Connection connection; %>
<%! PreparedStatement preparedStatement; %>
<%! Properties properties=new Properties(); %>
<%! String filePath="E:/weja2/jsp/resources/StudentInfo.properties"; %>
<%!  FileInputStream file; %>
<%! String query; %>
<%!int result ;%>
<%! String driverpath="com.mysql.cj.jdbc.Driver"; %>
<%
name=request.getParameter("name");
email=request.getParameter("email");
address=request.getParameter("address");
contact=Long.parseLong(request.getParameter("contact"));
  add=request.getParameter("add");
	try {
		file=new FileInputStream(filePath);
		properties.load(file);
	Class.forName(driverpath);
	 connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/weja2" ,"root","root");
	  String query="insert into StudentInfoFrom values(?,?,?,?)";
	 PreparedStatement  preparedStatement=connection.prepareStatement(query);
	preparedStatement.setString(1,name);
	preparedStatement.setString(2,email);
	preparedStatement.setString(3,address);
	preparedStatement.setLong(4,contact);
	int result=preparedStatement.executeUpdate();

		
	}
	catch(Exception e){
		e.printStackTrace();
		
	}
	if(add!=null)
	{
		out.println("record saved in database");
	}
	
	
	
%>
    
</body>
</html>