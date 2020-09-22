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
rs=stmt.executeQuery("select usname from obd_admin where usid='" + tuid + "'");
if(rs.next())
{
tuname=rs.getString(1);
out.println("<script>function goback(){ history.forward(); }</script>");
out.println("<body onload='goback()'>Welcome <font color=red><b>" + tuname + "</b></font>,<p>");
out.println("<a href='cpwd.jsp' target='main'>Change Password</a><br><br>");
out.println("<a href='viewdonors.jsp' target='main'>View Donors</a><br><br>");
out.println("<a href='events.html' target='main'>Post Event</a><br><br>");
out.println("<a href='revents.html' target='main'>Remove Event</a><br><br>");
out.println("<a href='updatevents.jsp' target='main'>Update Event</a><br><br>");
out.println("<a href='viewevents.jsp' target='main'>View Events</a><br><br>");
out.println("<a href='stock.jsp' target='main'>Update Stock</a><br><br>");
out.println("<a href='stats.jsp' target='main'>View Stats</a><br><br>");
out.println("<a href='index.html' target='_top'>Logout</a><br><br></body>");
}
con.close();
}

catch(Exception ee)
{
out.println("Error -->" + ee.getMessage());
}
%>