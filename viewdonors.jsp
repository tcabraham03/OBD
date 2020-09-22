<%@ page import="java.sql.*" %>

<%
String tuid;
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
rs=stmt.executeQuery("select * from donors");
out.println("<h3>DONOR LIST</h3><hr>");
out.println("<table border><tr><td>Donor ID</td><td>User Name</td><td>Address</td><td>Contact No</td><td>Email-Id</td><td>Regn. Date</td></tr>");
while(rs.next())
{
out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td></tr>");
}
con.close();
}
catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>





