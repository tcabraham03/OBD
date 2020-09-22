<%@ page import="java.sql.*" %>

<%
String tdid,teventid,tbg,tunts;
String tuname;
Connection con;
Statement stmt;
ResultSet rs;
%>

<%
try
{
tbg="";
teventid=request.getParameter("eventid");
tdid=request.getParameter("did");
tunts=request.getParameter("unts");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();

rs=stmt.executeQuery("select bg from donors where usid='" + tdid + "'");
if(rs.next())
tbg=rs.getString(1);
rs.close();
out.println("<h3>STOCK UPDATION</h3><hr><form method=post action='stock2.jsp'>");
stmt.executeUpdate("insert into stock values('" + teventid + "','" + tdid + "','" + tbg + "'," + tunts + ")");
out.println("<p><b>Stock Updated</form></html>");
con.close();
}

catch(Exception ee)
{
out.println("The Stock has been updated already for this donor and event." );
}
%>
