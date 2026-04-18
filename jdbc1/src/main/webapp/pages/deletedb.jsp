<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%
   Connection con;
   Statement stmt;
   try
   {
	   String driver="oracle.jdbc.driver.OracleDriver";
	   Class.forName(driver);
	   
	   String url="jdbc:oracle:thin:@localhost:1521:xe";
	   String userid="system";
	   String password="manash";
	   
	   con= DriverManager.getConnection(url,userid,password);
	   stmt=con.createStatement();
	   
	   int empno=Integer.parseInt(request.getParameter("empno"));
	   
	   String query="DELETE FROM EMP1 WHERE EMPNO='"+empno+"'";
	   
	   int rn=stmt.executeUpdate(query);
	   
	   if(rn>0)
	   {
		   response.sendRedirect("home.jsp");
	   }
	   else
	   {
		   out.print("<h3 style='text-align:center;color:red;'>Not Found</h3>");
%>
		   <jsp:include page="home.jsp"></jsp:include>	
<%	   }
	   con.close();
   }
   catch(Exception e)
   {
	   out.println(e);
   }
%>