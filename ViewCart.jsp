<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.pack.DbConnect" %>

<!DOCTYPE html>
<html>
<head>

<title>Your Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f4f6f9;
font-family:Segoe UI;
}

.cart-box{
width:800px;
margin:auto;
margin-top:60px;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

</style>

</head>

<body>

<div class="cart-box">

<h2 class="text-center mb-4">🛒 Your Cart</h2>

<table class="table table-bordered table-hover">

<tr class="table-dark">
<th>Product ID</th>
<th>Product Name</th>
<th>Price</th>
<th>Action</th>
</tr>

<%

String uname = (String)session.getAttribute("uname");

Connection con = DbConnect.getcon();

PreparedStatement ps = con.prepareStatement(
"select p.pid,p.pname,p.pprice from productsss p, cart c where p.pid=c.pid and c.uname=?");

ps.setString(1,uname);

ResultSet rs = ps.executeQuery();

int subtotal = 0;

while(rs.next()){

int price = rs.getInt("pprice");
subtotal += price;

%>

<tr>

<td><%=rs.getInt("pid")%></td>

<td><%=rs.getString("pname")%></td>

<td>₹ <%=price%></td>

<td>

<form action="removeCart" method="post">

<input type="hidden" name="pid" value="<%=rs.getInt("pid")%>">

<button class="btn btn-danger btn-sm"
onclick="return confirm('Remove this product?')">
Remove
</button>

</form>

</td>

</tr>

<%
}
%>

</table>

<%

double cgst = subtotal * 0.09;
double sgst = subtotal * 0.09;
double total = subtotal + cgst + sgst;

%>

<hr>

<table class="table table-bordered">

<tr>
<td><b>Subtotal</b></td>
<td>₹ <%=subtotal%></td>
</tr>

<tr>
<td><b>CGST (9%)</b></td>
<td>₹ <%=cgst%></td>
</tr>

<tr>
<td><b>SGST (9%)</b></td>
<td>₹ <%=sgst%></td>
</tr>

<tr class="table-success">
<td><b>Total Bill</b></td>
<td><b>₹ <%=total%></b></td>
</tr>

</table>

<div class="text-center">

<a href="index.jsp" class="btn btn-primary">
Continue Shopping
</a>

<form action="payment.jsp" style="display:inline;">
<button class="btn btn-success">Proceed to Payment</button>
</form>

</div>

</div>

</body>
</html>