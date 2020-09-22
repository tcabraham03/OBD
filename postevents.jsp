<%@ page import="java.sql.*" %>

<%
String teid,tdescp,tdate,ttime,tlocation;  
Connection con;
%>

<%
teid=request.getParameter("eid");
tdescp=request.getParameter("descp");
tdate=request.getParameter("edate");
ttime=request.getParameter("etime");
tlocation=request.getParameter("location");

try
{
//out.println("Called from register.htm");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
Statement stmt=con.createStatement();

//out.println("insert into users values('" + tdate + "','" + teid +"','" + ttime + "','" + tlocation + "')");

stmt.executeUpdate("insert into events values('" + teid + "','" + tdescp +"','" + tdate +"','" + ttime  + "','" + tlocation + "')");

out.println("<h3>POST EVENTS</h3><hr>Success! event posted.");

con.close();
}
catch(Exception ee)
{

out.println(ee.getMessage());
}

%>