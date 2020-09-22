<%@ page import="java.sql.*" %>

<%
String tuid;
String tuname;
Connection con;
Statement stmt;
ResultSet rs;
%>

<%
try
{
tuid=(String)session.getAttribute("suid");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();
out.println("<h3>STOCK UPDATION</h3><hr><form method=post action='stock2.jsp'>");
out.println("<table><tr><td>Event ID</td><td><select name=eventid>");
rs=stmt.executeQuery("select eventid from events");
while(rs.next())
{
tuname=rs.getString(1);
out.println("<option>" + tuname + "</option>");
}
rs.close();
out.println("</select></td></tr>");
out.println("<tr><td>Donor ID</td><td><select name=did>");
rs=stmt.executeQuery("select usid from donors");
while(rs.next())
{
tuname=rs.getString(1);
out.println("<option>" + tuname + "</option>");
}
out.println("<tr><td>Units</td><td><input type=text name=unts size=5></td></tr>");
out.println("<tr></table>");
out.println("<p><input type=submit value='Update'></form></html>");
con.close();
}

catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>
