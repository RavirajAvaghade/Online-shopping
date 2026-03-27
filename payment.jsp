<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.pack.DbConnect" %>

<%

String uname = (String)session.getAttribute("uname");

Connection con = DbConnect.getcon();

PreparedStatement ps = con.prepareStatement("select * from cart where uname=?");
ps.setString(1,uname);

ResultSet rs = ps.executeQuery();

/* If cart empty redirect to cart page */

if(!rs.next()){
response.sendRedirect("cart.jsp?msg=empty");
return;
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background: linear-gradient(135deg,#1e3c72,#2a5298);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
font-family:Segoe UI;
}

.payment-box{
background:white;
padding:30px;
border-radius:15px;
width:420px;
box-shadow:0 10px 30px rgba(0,0,0,0.3);
}

.hidden{
display:none;
}

.qr-img{
width:200px;
margin-top:20px;
}

.card-img{
width:250px;
margin-bottom:20px;
}

</style>

<script>

function showPayment(option)
{

document.getElementById("cardForm").style.display="none";
document.getElementById("gpay").style.display="none";
document.getElementById("phonepe").style.display="none";

if(option=="card")
{
document.getElementById("cardForm").style.display="block";
}

if(option=="gpay")
{
document.getElementById("gpay").style.display="block";
}

if(option=="phonepe")
{
document.getElementById("phonepe").style.display="block";
}

}

</script>

</head>

<body>

<div class="payment-box">

<h3 class="text-center mb-4">Select Payment Method</h3>

<!-- Payment Options -->

<input type="radio" name="pay" onclick="showPayment('card')"> 💳 Credit Card
<br><br>

<input type="radio" name="pay" onclick="showPayment('gpay')"> 📱 Google Pay
<br><br>

<input type="radio" name="pay" onclick="showPayment('phonepe')"> 📲 PhonePe

<hr>

<!-- Credit Card Form -->

<div id="cardForm" class="hidden text-center">

<h5>Pay using Credit Card</h5>

<img src="https://img.freepik.com/free-vector/realistic-credit-card-design_23-2149126094.jpg" class="card-img">

<form action="payment" method="post">

<input type="text" class="form-control mb-3" name="card" placeholder="Card Number" required>

<input type="text" class="form-control mb-3" name="Expiry" placeholder="MM/YY" required>

<input type="text" class="form-control mb-3" name="Cvv" placeholder="CVV" required>

<button class="btn btn-primary w-100">Pay Now</button>

</form>

</div>

<!-- GPay Scanner -->

<div id="gpay" class="hidden text-center">

<h5>Scan with Google Pay</h5>

<img src="images/gpay.png" class="qr-img">

<br><br>

<form action="payment" method="post">
<button class="btn btn-success w-100">Payment Done</button>
</form>

</div>

<!-- PhonePe Scanner -->

<div id="phonepe" class="hidden text-center">

<h5>Scan with PhonePe</h5>

<img src="images/phone.png" class="qr-img">

<br><br>

<form action="payment" method="post">
<button class="btn btn-success w-100">Payment Done</button>
</form>

</div>

</div>

</body>
</html>