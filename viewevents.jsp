<%@ page import="java.sql.*" %>

<%
String tueid;
Connection con;
Statement stmt;
ResultSet rs;
%>

<%
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();
rs=stmt.executeQuery("select * from events");
out.println("<h3>DONOR LIST</h3><hr>");
out.println("<table border><tr><td>Event ID</td><td>Event Desc</td><td>Date</td><td>Time</td><td>Location</td></tr>");
while(rs.next())
{
out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) +"</td></tr>");
}
con.close();
}
catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>


