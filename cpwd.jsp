<%
String tuid;
%>

<%
tuid=(String)session.getAttribute("suid");
out.println("<h3>Change Password</h3><hr><form method=post action='pwd.jsp'>");
out.println("<table><tr><td>User ID</td><td><input type=text size=10 name=uid readonly value=" + tuid + "></td></tr>");
out.println("<tr><td>Exisiting Password</td><td><input type=password size=10 name=epwd ></td></tr>");
out.println("<tr><td>New Password</td><td><input type=password size=10 name=npwd ></td></tr>");
out.println("<tr><td>Confirm Password</td><td><input type=password size=10 name=cpwd ></td></tr><tr></tr>");
out.println("<tr><td></td><td><input type=submit value='Update'></td></tr></table></form>");
%>
