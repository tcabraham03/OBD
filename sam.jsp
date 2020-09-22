<!-- Codes by HTML.am -->


<%@ page import="java.io.*,java.util.*" %>

<html>
<body background="banner.jpg">
<%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("Welcome to my website!");
       hitsCount = 1;
    }else{
       /* return visit */
       out.println("Welcome back to my website!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<marquee behavior="slide" direction="right" scrollamount="5"><font size="10"><font color="green"><b>
Total number of visits: <%= hitsCount%></b></font></font></marquee>


</body>
</html>
<!--
<marquee behavior="scroll" direction="up" scrolldelay="450">Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!Here is some scrolling text... going up!</marquee>
-->