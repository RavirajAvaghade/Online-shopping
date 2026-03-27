<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Thank You</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:linear-gradient(135deg,#1e3c72,#2a5298);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
font-family:Segoe UI;
}

.box{
background:white;
padding:40px;
border-radius:15px;
width:420px;
text-align:center;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
}

h1{
color:#28a745;
font-weight:bold;
}

.bill{
background:#f5f5f5;
padding:15px;
border-radius:10px;
margin-top:20px;
}

.visit{
color:#555;
font-size:15px;
}

</style>

</head>

<body>

<%

String total = request.getParameter("total");

if(total == null){
total = "0";
}

String custId = "CUST" + (int)(Math.random()*10000);

%>

<div class="box">

<h1>&#127881; Thank You!</h1>

<p>Your order has been placed successfully.</p>

<div class="bill">

<h5>Order Summary</h5>

<p><b>Customer ID :</b> <%=custId%></p>


</div>

<p class="visit mt-3">Thank you for shopping with us ❤️</p>

<p><b>Visit Again!</b></p>

<a href="Home.jsp" class="btn btn-warning mt-3">
Continue Shopping
</a>

</div>

</body>
</html>