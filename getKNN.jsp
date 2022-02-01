<%@ page  import="java.sql.*,java.io.*,java.util.*,databaseconnection.* "%>

<%@ include file="aheader.jsp"%>

<center><h2><font size="" color="#000000">Detection Fake Statement</h1></font>
</center>


<%

String hb=request.getParameter("hb");
String temp=request.getParameter("temp");


	Connection con2 = databasecon.getconnection();
	Statement st5 = con2.createStatement();
 String[] cmd = {
      "python",
      "E:\\python\\predict.py",
      hb,
	  temp};

Process p = Runtime.getRuntime().exec(cmd);
BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
String res = in.readLine();
System.out.println("value is : "+res);
st5.executeUpdate("insert into results values('"+hb+"','"+temp+"','"+res+"')");
response.sendRedirect("results.jsp");

%>
<center>





<br><br><br>
<%@ include file="footer.jsp"%>