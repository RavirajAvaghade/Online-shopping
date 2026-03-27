<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.pack.DbConnect" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Order History</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f4f6f9;
font-family:Segoe UI;
}

.history-box{
width:900px;
margin:auto;
margin-top:50px;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

</style>

</head>

<body>

<div class="history-box">

<h2 class="text-center mb-4">📦 Order History</h2>

<table class="table table-bordered table-hover">

<tr class="table-dark">
<th>Order ID</th>
<th>Product ID</th>
<th>Quantity</th>
<th>Total Amount</th>
<th>Date</th>
</tr>

<%

String uname = (String)session.getAttribute("uname");

Connection con = DbConnect.getcon();

PreparedStatement ps = con.prepareStatement(
"select * from orderss where lower(custid)=lower(?) order by order_date desc");

ps.setString(1,uname);

ResultSet rs = ps.executeQuery();

while(rs.next()){
%>

<tr>

<td><%=rs.getString("order_id")%></td>

<td><%=rs.getString("pid")%></td>

<td><%=rs.getInt("quantity")%></td>

<td>₹ <%=rs.getInt("total_amount")%></td>

<td><%=rs.getDate("order_date")%></td>

</tr>

<%
}
%>

</table>

<div class="text-center mt-3">
<a href="Home.jsp" class="btn btn-primary">Continue Shopping</a>
</div>

</div>

</body>
</html>