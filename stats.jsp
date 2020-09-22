<%@ page import="java.sql.*" %>

<%
Connection con;
Statement stmt;
ResultSet rs;
String []bgs={"A+","A-","B+","B-","AB+","AB-","O+","O-"};
int i;
%>

<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
stmt=con.createStatement();
out.println("<h3>STOCK STATUS</h3><hr><p>");
out.println("<table cellspacing=3 cellpadding=3 border><tr>");
for(i=0;i<bgs.length;i++)
out.println("<th>" + bgs[i] + "</th>");
out.println("</tr><tr>");

for(i=0;i<bgs.length;i++)
{
rs=stmt.executeQuery("select sum(unts) from stock where bg='" + bgs[i] + "'");
if(rs.next())
{
out.println("<td>" + rs.getInt(1)+ "</td>");
}
}
out.println("</tr></table>");
}
catch(Exception ee)
{
out.println(ee.getMessage());
}
%>