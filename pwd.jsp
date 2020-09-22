<%@ page import="java.sql.*" %>

<%
String tuid,tnpwd,tcpwd,tepwd;  
int c=0;
Connection con;
Statement stmt;
ResultSet rs;
%>

<%
tuid=request.getParameter("uid");
tnpwd=request.getParameter("npwd");
tcpwd=request.getParameter("cpwd");
tepwd=request.getParameter("epwd");
if(tepwd.equals("") || tcpwd.equals("") || tnpwd.equals(""))
 out.println("<b>All Password fields are mandatory!");
else
{
if(tnpwd.length()>=6 && tcpwd.length()>=6)
{
   if(tnpwd.equals(tcpwd))
    {
       try
      {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:obddsn","obd","obd");
	stmt=con.createStatement();
	rs=stmt.executeQuery("select * from obd_admin where usid='" + tuid + "' and pswd='" + tepwd + "'");
	if(rs.next())
	{
		rs.close();
		stmt.executeUpdate("update obd_admin set pswd='" + tnpwd + "' where usid='" + tuid + "'");	
		out.println("Password Updated Successfully!");

	}
	else
		out.println("Invalid Credentials!");
	con.close();
      }
       catch(Exception ee)
     {
	
     }
   } //tnpwd==tcpwd
     else
         out.println("<b>Password  Mismatch!"); 
} // length >6
else
out.println("<b>New Password should be >=6 char's!");
}



%>