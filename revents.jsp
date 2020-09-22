<%@ page import="java.sql.*" %>

<%
String teid;
Connection con;
Statement stmt;

%>

<%
try
{
teid=request.getParameter("eid");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();

int stat=stmt.executeUpdate("delete from events where eventid='" + teid + "'");
if(stat>0)
out.println("Event <font color=red>" + teid + "</font> Deleted Successfully!");
else
out.println("Event with this id <font color=red>" + teid + "</font> Does not exist!");
con.close();
}

catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>