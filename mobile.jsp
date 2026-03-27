<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mobiles</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
.mobile-info{
background:#ffffff;
padding:30px;
border-radius:10px;
line-height:1.7;
font-size:15px;
box-shadow:0 4px 12px rgba(0,0,0,0.1);
}

.mobile-info h3{
font-weight:600;
}

.mobile-info h4{
font-weight:600;
color:#333;
}

.mobile-info ul{
padding-left:20px;
}

.mobile-info li{
margin-bottom:8px;
}
body{
background:#f3f3f3;
font-family:Segoe UI;
}

.product-card{
display:flex;
background:white;
padding:20px;
margin-bottom:20px;
border-radius:6px;
border:1px solid #ddd;
align-items:center;
}

.product-img{
width:180px;
height:180px;
object-fit:contain;
}

.product-details{
flex:1;
padding-left:25px;
}

.product-title{
font-size:20px;
font-weight:600;
}

.product-price{
color:#B12704;
font-size:22px;
font-weight:bold;
}

.product-details ul{
padding-left:18px;
margin-top:10px;
}

.product-details li{
margin-bottom:4px;
}

.add-cart{
background:#FFD814;
border:1px solid #FCD200;
font-weight:bold;
padding:8px 18px;
}

.add-cart:hover{
background:#F7CA00;
}
.footer-section{
background:#111;
color:#fff;
padding:50px 0;
margin-top:60px;
}

.footer-section h5{
font-weight:600;
margin-bottom:15px;
}

.footer-links{
list-style:none;
padding:0;
}

.footer-links li{
margin-bottom:8px;
}

.footer-links a{
text-decoration:none;
color:#ccc;
transition:0.3s;
}

.footer-links a:hover{
color:#ffc107;
}
.social-icons{
margin-top:20px;
}

.social-icons a{
display:inline-block;
margin:0 10px;
font-size:20px;
color:#fff;
transition:0.3s;
}

.social-icons a:hover{
color:#ffc107;
}
.footer-section select{
background:#222;
color:#fff;
border:1px solid #555;
padding:6px;
}

.footer-section select:focus{
outline:none;
border-color:#ffc107;
}
</style>

</head>

<body>

<div class="container mt-5">

<h2 class="mb-4">Mobile Collection</h2>


<!-- PRODUCT 1 -->

<form action="addcart" method="post">

<div class="product-card">

<img src="images/iphone14.jpg" class="product-img">

<div class="product-details">

<h5 class="product-title">Apple iPhone 17 (Mist Blue)</h5>

<ul>
<li>256GB ROM</li>
<li>6.3 inch Super Retina XDR Display</li>
<li>48MP + 48MP Rear Camera</li>
<li>18MP Front Camera</li>
<li>A19 Chip Processor</li>
</ul>

<p class="product-price">₹82,900</p>

<input type="hidden" name="pid" value="113">

<button type="submit" class="btn add-cart">Add to Cart</button>

</div>

</div>

</form>


<!-- PRODUCT 2 -->

<form action="addcart" method="post">

<div class="product-card">

<img src="images/samsung s23.png" class="product-img">

<div class="product-details">

<h5 class="product-title">Samsung Galaxy S23</h5>

<ul>
<li>Snapdragon 8 Gen 2</li>
<li>256GB Storage</li>
<li>Dynamic AMOLED Display</li>
<li>50MP Triple Camera</li>
</ul>

<p class="product-price">₹74,999</p>

<input type="hidden" name="pid" value="114">

<button type="submit" class="btn add-cart">Add to Cart</button>

</div>

</div>

</form>


<!-- PRODUCT 3 -->

<form action="addcart" method="post">

<div class="product-card">

<img src="images/oneplus11.png" class="product-img">

<div class="product-details">

<h5 class="product-title">OnePlus 11</h5>

<ul>
<li>16GB RAM</li>
<li>256GB Storage</li>
<li>Snapdragon 8 Gen 2</li>
<li>50MP Hasselblad Camera</li>
</ul>

<p class="product-price">₹56,999</p>

<input type="hidden" name="pid" value="115">

<button type="submit" class="btn add-cart">Add to Cart</button>

</div>

</div>

</form>


<!-- PRODUCT 4 -->

<form action="addcart" method="post">

<div class="product-card">

<img src="images/xiomi13.png" class="product-img">

<div class="product-details">

<h5 class="product-title">Xiaomi 13</h5>

<ul>
<li>Snapdragon 8 Gen 2</li>
<li>256GB Storage</li>
<li>Leica Camera System</li>
<li>120Hz AMOLED Display</li>
</ul>

<p class="product-price">₹49,999</p>

<input type="hidden" name="pid" value="116">

<button type="submit" class="btn add-cart">Add to Cart</button>

</div>

</div>

</form>

<div class="mobile-info container mt-5">

<h3 class="mb-3">Buy Mobile Phones Online at the Best Prices</h3>

<p>
Buy mobile phones online at the best prices in India from Amazon.in.
Welcome to Amazon.in, your electronics store for the newest mobile phones
at discounted rates. Whether you want the latest innovation, an affordable
gadget, or a premium smartphone, Amazon.in has you covered.
</p>

<h4 class="mt-4">Choosing a Smartphone Based on Operating System</h4>

<p>
When selecting a smartphone, the operating system plays a very important
role in performance and usability.
</p>

<h5 class="mt-3">Android Mobile Phones</h5>

<p>
Android is flexible and customizable and allows you to install a wide
range of applications. Brands like Samsung, Xiaomi, OnePlus, and Realme
provide Android smartphones with powerful specifications.
</p>

<h4 class="mt-4">Top Mobile Phone Brands</h4>

<ul>
<li><b>Samsung:</b> Known for innovation and advanced technology.</li>
<li><b>Xiaomi:</b> Provides high-quality smartphones at affordable prices.</li>
<li><b>OnePlus:</b> Popular for flagship-level performance.</li>
<li><b>Realme:</b> Offers budget to premium smartphones.</li>
</ul>

<h4 class="mt-4">Tips to Choose the Best Smartphone</h4>

<ul>
<li><b>Determine Your Budget:</b> Decide your budget before choosing a phone.</li>
<li><b>Identify Your Needs:</b> Choose a phone based on camera and battery.</li>
<li><b>Check for Deals:</b> Look for discounts and offers.</li>
</ul>

<h4 class="mt-4">FAQs – Mobile Phones</h4>

<p><b>Which are the best mobile phone brands in India?</b><br>
Samsung, Apple, Xiaomi, OnePlus and Realme are popular brands.
</p>

<p><b>What is the minimum RAM capacity needed?</b><br>
At least 4GB RAM is recommended for smooth performance.
</p>

<p><b>What display options are available?</b><br>
LCD, OLED and AMOLED displays are commonly used.
</p>

<p><b>What are the best display resolutions?</b><br>
Full HD (1080p), Quad HD (1440p) and 4K Ultra HD.
</p>

</div>


<!-- FOOTER -->

<footer class="footer-section">

<div class="container">

<div class="row text-start align-items-start">

<!-- ABOUT -->

<div class="col-lg-3 col-md-6">

<h5>Urban Cart</h5>

<p>
Your one-stop shop for fashion, accessories and latest trends
for Men, Women and Kids.
</p>

</div>


<!-- SHOP -->

<div class="col-lg-3 col-md-6">

<h5>Shop</h5>

<ul class="footer-links">

<li><a href="mobile.jsp">Mobiles</a></li>
<li><a href="#">Men</a></li>
<li><a href="#">Women</a></li>
<li><a href="#">Kids</a></li>
<li><a href="#">New Arrivals</a></li>
<li><a href="#">Sale</a></li>

</ul>

</div>


<!-- SUPPORT -->

<div class="col-lg-3 col-md-6">

<h5>Customer Support</h5>

<ul class="footer-links">

<li><a href="#">Contact Us</a></li>
<li><a href="#">Order Tracking</a></li>
<li><a href="#">Returns</a></li>
<li><a href="#">FAQs</a></li>
<li><a href="#">Help Center</a></li>

</ul>

</div>


<!-- LANGUAGE + NEWSLETTER -->

<div class="col-lg-3 col-md-6">

<h5>Subscribe</h5>

<p>Get latest offers and updates</p>

<input type="email"
placeholder="Enter your email"
class="form-control mb-2">

<button class="btn btn-warning w-100 mb-3">
Subscribe
</button>


<h6>Language</h6>

<select class="form-select" onchange="changeLanguage(this.value)">

<option value="en">English</option>
<option value="hi">Hindi</option>
<option value="mr">Marathi</option>
<option value="te">Telugu</option>
<option value="ta">Tamil</option>

</select>

</div>

</div>


<hr>


<!-- SOCIAL ICONS -->

<div class="text-center social-icons">

<a href="https://facebook.com/Raviraj Avaghade" target="_blank">
<i class="fab fa-facebook-f"></i>
</a>

<a href="https://instagram.com/raviraj_____17" target="_blank">
<i class="fab fa-instagram"></i>
</a>

<a href="#">
<i class="fab fa-twitter"></i>
</a>

<a href="#">
<i class="fab fa-youtube"></i>
</a>

<a href="#">
<i class="fab fa-telegram"></i>
</a>

<a href="https://www.linkedin.com/in/Raviraj Avaghade" target="_blank">
<i class="fab fa-linkedin-in"></i>
</a>

</div>


<p class="copyright text-center">

© 2026 Urban Cart | Designed by Raviraj

</p>

</div>

</footer>


<script>

function changeLanguage(lang){

if(lang=="hi"){
alert("Hindi version coming soon");
}

else if(lang=="mr"){
alert("Marathi version coming soon");
}

else if(lang=="te"){
alert("Telugu version coming soon");
}

else if(lang=="ta"){
alert("Tamil version coming soon");
}

}

</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>