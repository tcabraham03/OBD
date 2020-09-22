<%@ page import="java.sql.*" %>

<%
String tuid,tpwd,tname,taddr,tcno,tdor,temid,bg;  
Connection con;
%>

<%
tuid=request.getParameter("uid");
tpwd=request.getParameter("pwd");
tname=request.getParameter("uname");
taddr=request.getParameter("caddr");
tdor=request.getParameter("dor");
tcno=request.getParameter("cno");
temid=request.getParameter("emid");
bg=request.getParameter("r1");
try
{
//out.println("Called from register.htm");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
Statement stmt=con.createStatement();

//out.println("insert into donors values('" + tuid + "','" + tpwd + "','" + tname + "','" + taddr + "','" + tcno  + "','" + temid+ "','" + tdor + "','" + bg + "')");

stmt.executeUpdate("insert into donors values('" + tuid + "','" + tpwd + "','" + tname + "','" + taddr + "','" + tcno  + "','" + temid+ "','" + tdor + "','" + bg + "')");

out.println("Success! User Registered.To register another <a href='register.htm'>Click</a> here.");

con.close();
}
catch(Exception ee)
{

out.println(ee.getMessage());
}

%>