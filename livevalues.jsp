<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<font size="" color="#cc0033">
<table cellpadding="10">

<form action="getKNN.jsp">
		
<tr><td>Heart Beat<td><input type="text" name="hb">

<tr><td>Temperature<td><input type="text" name="temp">


<tr><td></td><td><input type="submit"></td>

</form>



</table>
<br><br>
<%@ include file="footer.jsp"%>