<%@ include file="aheader.jsp"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<font size="" color="#cc0033">
<table cellpadding="10">
<tr><th>Sno<th>HeartBeat<th>Temperature<th>Class


<% 
int temp=0;
	try{

	Connection con2 = databasecon.getconnection();
	Statement st5 = con2.createStatement();
	String sss1 = "select * from dataset";

	ResultSet rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		++temp;
		%>
		<tr><TH><H4><%=temp%><tH><H4><%=rs1.getString(1)%><tH><H4><%=rs1.getString(2)%><tH><H4><%=rs1.getString(3)%>
		<%
	}}
catch(Exception e1)
{
out.println(e1);
}

%>
</table>
<br><br>
<%@ include file="footer.jsp"%>