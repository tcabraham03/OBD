<%@ page import="java.sql.*" %>
<%
Connection con;
Statement stmt;
ResultSet rs;
String tuid,tpwd;
%>

<%
tuid=request.getParameter("uid");
tpwd=request.getParameter("pwd");
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();

if(tuid.equals("obd"))
rs=stmt.executeQuery("select * from obd_admin where usid='" + tuid + "' and pswd='" + tpwd + "'");
else
rs=stmt.executeQuery("select * from donors where usid='" + tuid + "' and pswd='" + tpwd + "'");

if(rs.next())
{
session.setAttribute("suid",tuid); // creates session with user id as value
if(tuid.equals("obd"))
response.sendRedirect("astatus.htm");
else
response.sendRedirect("dstatus.html");
}
else
{
out.println("Check User Info!<br> To try again <a href='wedr.html'>Click</a> here");
}
con.close();
}
catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>