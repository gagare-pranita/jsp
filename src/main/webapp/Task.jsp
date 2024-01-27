<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String name,email, address;%>
<%   name=request.getParameter("name");
    email=request.getParameter("email");

    address=request.getParameter("address");
    
Connection connection=null;
PreparedStatement preparedStatement=null;
    
    
    String query="insert into studentRegister values(?,?,?)";
	try {
		
	Class.forName("com.mysql.cj.jdbc.Driver");
	 connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ weja2","root","password");
	
	 preparedStatement=connection.prepareStatement(query);
	preparedStatement.setString(1,name);
	preparedStatement.setString(2,email);
	

	preparedStatement.setString(3,address);
	int result=preparedStatement.executeUpdate();

	if(result>0)
	{
		System.out.println("<h1 data succefully  loaded </h1>");
	}
	else{
		System.out.println("<h1> error </h1>");
	}
		
		
	}
	catch(Exception e){
		e.printStackTrace();
		
		
		
		
	}

	
	
	
   %>
    
 

 

</body>
</html>