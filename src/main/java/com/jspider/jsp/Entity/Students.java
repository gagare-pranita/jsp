package com.jspider.jsp.Entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Students {
	
	private static String query;
	private static Connection connection;
	private static PreparedStatement PreparedStatement;
	private static   int result;
	private static String  driverpath="com.mysql.cj.jdbc.Driver";
	private static String dburl="jdbc:mysql://localhost:3306/ weja2 ? user=root & password=root";
	
	
	public static  boolean save(String name,String email,double contact,String address){
		
			try {
				
			Class.forName(driverpath);
			connection=DriverManager.getConnection(dburl);
			query="insert into student values(?,?,?,?)";
			PreparedStatement=connection.prepareStatement(query);
			PreparedStatement.setString(1,name);
			PreparedStatement.setString(2, email);
			PreparedStatement.setDouble(3, contact);
			PreparedStatement.setString(4, address);
			result=PreparedStatement.executeUpdate();		
				
				
			}
			catch
			(Exception e){
				e.printStackTrace();
				
				
			}
			finally {
				try {
					if(connection!=null)
					{
						connection.close();}
					if(PreparedStatement!=null)
					{
						PreparedStatement.close();
					}
						
				}
				catch (Exception e){
					e.printStackTrace();
					
				}
			}
			return true;
		}
	}
	

