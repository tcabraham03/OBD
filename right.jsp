<html>
<script>
function disp_date(frm)
{
d=new Date();
frm.dor.value=d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getYear();
}
</script>
<h3><b><font color="red">USER REGISTRATION<b></font></h3><hr>
<style>
img
{
position:absolute;
left:300px;
top:30px;
}
</style>
<body onLoad="disp_date(f)">
<p><form name='f' method=post action='register.jsp'>
<table>
<tr><td><font color="blue">User ID</font></td><td><input type=text size=20 name='uid'></td></tr>
<tr><td><font color="blue">Password</font></td><td><input type=text size=20 name='pwd'></td></tr>
<tr><td><font color="blue">User Name</font></td><td><input type=text size=20 name='uname'></td></tr>
<tr><td><font color="blue">Address</font></td><td><input type=text size=20 name='caddr'></td></tr>
<tr><td><font color="blue">Contact No</font></td><td><input type=text size=20 name='cno'></td></tr>
<tr><td><font color="blue">Regn. Date</font></td><td><input type=text size=20 name='dor' readonly></td></tr>
<tr></tr>
<tr><td></td><td><input type=submit value='Register'></td></tr>
</table> </form>
<p>
<img src="zeee.gif" width=200 heigth=200>
</body>
</html>
