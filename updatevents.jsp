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
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();
out.println("<h3>UPDATE EVENT INFO</h3></hr><form method=post action='updatevents2.jsp'>");
out.println("<table><tr><td>Event ID</td><td><select name=eid>");
rs=stmt.executeQuery("select eventid from events");
   while(rs.next())
   {
      tuname=rs.getString(1);
      out.println("<option>" + tuname + "</option>");
   }
out.println("</td></tr><tr></tr><tr><td></td><td><input type=submit value='Update'></td></tr></table></form></html>");
con.close();
}

catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>