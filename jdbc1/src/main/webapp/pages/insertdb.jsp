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
	   
	   int emono=Integer.parseInt(request.getParameter("empno"));
	   String ename = request.getParameter("ename");
	   String job = request.getParameter("job");
	   double sal= Double.valueOf(request.getParameter("sal"));
	   
	   String query="INSERT INTO EMP1(EMPNO, ENAME, JOB, SAL) VALUES('"+emono+"','"+ename+"','"+job+"','"+sal+"')";
	   int rn= stmt.executeUpdate(query);
	   if(rn>0)
	   {
		   response.sendRedirect("home.jsp");
	   }
	   con.close();
   }
   catch (Exception e)
   {
	   System.out.println(e);
   }


%>