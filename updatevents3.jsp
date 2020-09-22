<%@ page import="java.sql.*" %>

<%
String tuid,tdecp,tedate,tetime,tloc;
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
tdecp=request.getParameter("decp");
tedate=request.getParameter("edate");
tetime=request.getParameter("etime");
tloc=request.getParameter("loc");
//out.println("<h3>UPDATE EVENT INFO</h3><hr><form method=post action='deluser2.jsp'>");
//out.println("<table><tr><td>Selected Event </td><td><input type=text name=eid value='" + tuid + "' readonly></td></tr>");
session.setAttribute("suid",tuid);rs=stmt.executeQuery("select * from events where eventid='" + tuid + "'");

if(rs.next())
	{
		rs.close();
		stmt.executeUpdate("update events set descp='" + tdecp + "', edate='" + tedate + "' , etime='" + tetime + "', location='" + tloc + "'    where eventid='" + tuid + "'");	
		out.println("Event Updated Successfully!");

	}
//out.println("</table><input type=submit value='Update'></form></html>");
con.close();
}

catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>