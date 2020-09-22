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

tuid=request.getParameter("eid");
out.println("<h3>UPDATE EVENT INFO</h3><hr><form method=post action='updatevents3.jsp'>");
out.println("<table><tr><td>Selected Event </td><td><input type=text name=eid value='" + tuid + "' readonly></td></tr>");
session.setAttribute("suid",tuid);
rs=stmt.executeQuery("select * from events where eventid='" + tuid + "'");

if(rs.next())
{
out.println("<tr><td>Event Desc</td><td><textarea rows=3 cols=30 name=decp>" + rs.getString(2) + "</textarea></td></tr>");
out.println("<tr><td>Date</td><td><input type=text size=10 name=edate value='" + rs.getString(3) + "'></td></tr>");
out.println("<tr><td>Time</td><td><input type=text size=10 name=etime value='" + rs.getString(4) + "'></td></tr>");
out.println("<tr><td>Location</td><td><input type=text size=10 name=loc value='" + rs.getString(5) + "'></td></tr>");
}
out.println("</table><input type=submit value='Update'></form></html>");
con.close();
}

catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>