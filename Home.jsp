<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.pack.DbConnect" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Commerce</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
padding-top:80px;
}
.navbar{
position:fixed;
top:0;
width:100%;
z-index:1000;
}

.category-bar{
position:fixed;
top:70px;
width:100%;
z-index:999;
}
.announcement-bar{
    position: fixed;
    top: 110px;
    width: 100%;
    z-index: 998;
    background: #ff9900;
    color: white;
    overflow: hidden;
    white-space: nowrap;
}

.announcement-text{
    display: inline-block;
    padding-left: 100%;
    animation: scrollText 25s linear infinite;
}

@keyframes scrollText{
    from{
        transform: translateX(0%);
    }
    to{
        transform: translateX(-100%);
    }
}
body{
padding-top:160px;
}
body{

background: linear-gradient(
135deg,
rgb(192, 192, 192),
rgb(192, 192, 192)
);
@keyframes gradientMove{

0%{background-position:0% 50%;}
50%{background-position:100% 50%;}
100%{background-position:0% 50%;}

}
.view-cart{

position:fixed;

top:120px;
right:25px;

background:#ff9900;

color:white;

font-weight:bold;

padding:12px 22px;

border-radius:8px;

border:none;

box-shadow:0 8px 20px rgba(0,0,0,0.4);

transition:0.3s;

z-index:999;

}

.view-cart:hover{

background:#ffb84d;

transform:scale(1.08);

}

/* hover effect */

.view-cart:hover{

background:#ffb84d;

}
/* NAVBAR */

.navbar{

background:rgba(0,0,0,0.8);

backdrop-filter:blur(10px);

box-shadow:0 8px 25px rgba(0,0,0,0.5);

}

.navbar-brand{

font-weight:bold;

font-size:22px;

}

.nav-link{

color:white !important;

margin-right:15px;

}

.nav-link:hover{

color:#ffd700 !important;

}

/* title */

.title{

text-align:center;
color:white;
margin:40px;
font-weight:bold;
letter-spacing:2px;
text-shadow:0 5px 15px rgba(0,0,0,0.5);

}

/* GRID */

.products-container{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:30px;
}

/* CARD */

.product-card{

background: rgba(255,255,255,0.15);
backdrop-filter: blur(15px);
border-radius:18px;
padding:25px;

border:1px solid rgba(255,255,255,0.3);

transition:0.4s;

box-shadow:0 10px 30px rgba(0,0,0,0.4);

color:white;

position:relative;

overflow:hidden;

}

/* hover animation */

.product-card:hover{

transform:translateY(-12px) scale(1.05);

box-shadow:0 20px 60px rgba(0,0,0,0.7);

}

/* shine effect */

.product-card::before{

content:"";

position:absolute;

top:0;
left:-100%;

width:100%;
height:100%;

background:linear-gradient(
120deg,
transparent,
rgba(255,255,255,0.4),
transparent
);

transition:0.6s;

}

.product-card:hover::before{

left:100%;

}

/* product name */

.product-name{

font-size:20px;
font-weight:bold;
margin-bottom:10px;

}
/* PRODUCT IMAGE */

.product-card img{

width:100%;

height:180px;

object-fit:contain;

border-radius:10px;

margin-bottom:10px;

background:white;

padding:5px;

}

/* price */

.price{

color:#00ffcc;
font-size:22px;
font-weight:bold;

}

/* button */

.cart-btn{

background:white;

color:#2a5298;

border:none;

font-weight:bold;

padding:8px;

transition:0.3s;

}

.cart-btn:hover{

background:#ffd700;

transform:scale(1.1);

}

/* view cart button */

.view-cart{

position:fixed;
top:80px;
right:20px;

box-shadow:0 10px 30px rgba(0,0,0,0.5);

}

/* responsive */

@media(max-width:1200px){
.products-container{
grid-template-columns:repeat(3,1fr);
}
}

@media(max-width:900px){
.products-container{
grid-template-columns:repeat(2,1fr);
}
}

@media(max-width:600px){
.products-container{
grid-template-columns:repeat(1,1fr);
}
}
/* FOOTER */

.footer-section{

background:#131921;
color:white;
padding:50px 0;
margin-top:40px;

}

.footer-section h5{

margin-bottom:20px;
font-weight:bold;

}

.footer-links{

list-style:none;
padding:0;

}

.footer-links li{

margin-bottom:10px;

}

.footer-links a{

color:#ccc;
text-decoration:none;

}

.footer-links a:hover{

color:#ff9900;

}

/* SOCIAL ICONS */

.social-icons a{

display:inline-block;

font-size:20px;

margin:0 10px;

width:40px;
height:40px;

line-height:40px;

border-radius:50%;

background:#222;

color:white;

text-align:center;

transition:0.3s;

}

.social-icons a:hover{

background:#ff9900;

transform:scale(1.1);

}

.copyright{

text-align:center;
margin-top:15px;
color:#aaa;
font-size:14px;

}
/* HERO SECTION */

.hero{

height:350px;

background:url("images/banner5.jpg") center/cover no-repeat;

display:flex;

align-items:center;

justify-content:center;

color:white;

text-align:center;

border-radius:20px;

margin-top:20px;

box-shadow:0 10px 30px rgba(0,0,0,0.4);

}
.hero h1{

font-size:45px;

font-weight:bold;

text-shadow:0 5px 15px rgba(0,0,0,0.7);

}

.hero p{

font-size:20px;

}
.hero-img{

height:350px;

object-fit:cover;

border-radius:15px;

box-shadow:0 10px 30px rgba(0,0,0,0.3);

}

/* CUSTOM CURSOR */

body{

cursor:url("images/cursor.png"), auto;

}
/* main container */
.cards-container{
    display:grid;
    grid-template-columns:1fr 1fr; 
    gap:25px;
    padding:20px;
}

/* main card */
.amazon-card{
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 3px 15px rgba(0,0,0,0.15);
    width:340px;   /* card size bigger */
}

/* 2x2 image grid */
.card-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:12px;
}

/* image box */
.grid-item{
    width:100%;
    height:170px;   /* image bigger */
    overflow:hidden;
}

/* image */
.grid-item img{
    width:100%;
    height:100%;
    object-fit:cover;
    border-radius:6px;
}

/* title */
.amazon-card{

background:white;
padding:18px;
border-radius:10px;
box-shadow:0 3px 12px rgba(0,0,0,0.15);
width:320px;

}

.amazon-card h3{
font-size:18px;
margin-bottom:15px;
}

/* 2x2 grid */

.card-grid{

display:grid;
grid-template-columns:1fr 1fr;
gap:15px;

}

/* item box */

.grid-item{

text-align:center;

}

/* image */

.grid-item img{

width:100%;
height:130px;
object-fit:cover;
border-radius:6px;

}

/* text */

.grid-item p{

font-size:14px;
margin-top:6px;
color:#333;

}

/* see more */

.see-more{

display:block;
margin-top:12px;
font-size:14px;
color:#007185;
text-decoration:none;

}

.see-more:hover{
color:#c7511f;
}

/* see more */
.see-more{
    display:block;
    margin-top:12px;
    color:#007185;
    text-decoration:none;
    font-weight:500;
}


.cards-section{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
}
.dark-mode{
background:#121212;
color:white;
}

.dark-mode .navbar{
background:#000;
}

.dark-mode .product-card{
background:#1e1e1e;
color:white;
}
.announcement-bar{
background:#ff9900;
color:white;
font-weight:bold;
padding:8px;
}
.category-bar{

background:white;

padding:10px;

display:flex;

justify-content:center;

gap:30px;

font-weight:bold;

box-shadow:0 3px 10px rgba(0,0,0,0.2);

}

.category-bar a{

text-decoration:none;

color:black;

}

.category-bar a:hover{

color:#ff9900;

}

/* dropdown */

.dropdown{

position:relative;

}

.dropbtn{

background:none;

border:none;

font-weight:bold;

}

.dropdown-content{

display:none;

position:absolute;

background:white;

min-width:150px;

box-shadow:0 5px 15px rgba(0,0,0,0.2);

}

.dropdown-content a{

display:block;

padding:10px;

}

.dropdown:hover .dropdown-content{

display:block;

}

.product-section{
background:#fff;
padding:25px;
border-radius:8px;
box-shadow:0 3px 10px rgba(0,0,0,0.1);
}

.slider-container{
position:relative;
display:flex;
align-items:center;
}

.product-scroll{
display:flex;
overflow-x:auto;
gap:25px;
scroll-behavior:smooth;
}

.product-scroll::-webkit-scrollbar{
display:none;
}

.product-item{
min-width:180px;
text-align:center;
}

.product-item img{
width:150px;
height:150px;
object-fit:contain;
}

.product-item span{
font-weight:bold;
color:#B12704;
}

.arrow{
position:absolute;
background:#fff;
border:none;
font-size:28px;
cursor:pointer;
height:60px;
width:40px;
box-shadow:0 2px 6px rgba(0,0,0,0.2);
}

.arrow.left{
left:-10px;
}

.arrow.right{
right:-10px;
}
.product-section{
background:#fff;
padding:25px;
border-radius:8px;
box-shadow:0 3px 10px rgba(0,0,0,0.1);
}

.slider-container{
position:relative;
display:flex;
align-items:center;
}

.product-scroll{
display:flex;
overflow-x:auto;
gap:25px;
scroll-behavior:smooth;
padding:10px 0;
}

.product-scroll::-webkit-scrollbar{
display:none;
}
.product-item{
min-width:200px;
text-align:center;
position:relative;
cursor:pointer;
}

.product-item img{
width:150px;
height:150px;
object-fit:contain;
transition:0.3s;
}

.product-item:hover img{
transform:scale(1.08);
}
.product-item h6{
font-size:14px;
margin-top:8px;
font-weight:600;
}

.info{
font-size:12px;
color:#555;
margin-bottom:4px;
}
.discount{
position:absolute;
top:6px;
left:6px;
background:red;
color:#fff;
font-size:12px;
padding:4px 7px;
border-radius:4px;
font-weight:bold;
}
.rating{
font-size:13px;
color:#ffa41c;
margin-bottom:3px;
}

.rating span{
color:#555;
font-size:12px;
}
.old{
text-decoration: line-through;
color:#777;
font-size:13px;
margin-left:6px;
}

.new{
color:#B12704;
font-weight:bold;
font-size:15px;
}
.off{
color:#0f1111;
font-size:13px;
margin-left:4px;
}
.popup{
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,0.7);
    display:flex;
    justify-content:center;
    align-items:center;
    z-index:2000;
}

/* BIG CARD */
.popup-content{
    width:600px;   /* 👈 मोठा केला */
    background:white;
    border-radius:15px;
    overflow:hidden;
    text-align:center;
    animation:zoomIn 0.5s ease;
    box-shadow:0 20px 60px rgba(0,0,0,0.6);
    position:relative;
}

/* IMAGE */
.offer-img{
    width:100%;
    height:250px;
    object-fit:cover;
}

/* TEXT */
.popup-content h2{
    margin-top:15px;
    font-weight:bold;
}

.popup-content p{
    color:#555;
}
.popup-content{
    width:800px;
}

/* BUTTON */
.shop-btn{
    background:#ff9900;
    color:white;
    border:none;
    padding:10px 25px;
    margin:15px;
    border-radius:5px;
    font-weight:bold;
    transition:0.3s;
}

.shop-btn:hover{
    background:#ffb84d;
    transform:scale(1.05);
}

/* CLOSE BUTTON */
.close{
    position:absolute;
    top:10px;
    right:15px;
    font-size:25px;
    cursor:pointer;
    color:black;
}

/* ANIMATION */
@keyframes zoomIn{
    from{
        transform:scale(0.5);
        opacity:0;
    }
    to{
        transform:scale(1);
        opacity:1;
    }
}
</style>

</head>

<body>

<script>

function scrollLeft(){
document.getElementById("productScroll").scrollLeft -= 300;
}

function scrollRight(){
document.getElementById("productScroll").scrollLeft += 300;
}

</script>
<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark fixed-top">

<div class="container">

<a class="navbar-brand" href="#">🛒 Urban Cart</a>

<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navmenu">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navmenu">

<form class="d-flex mx-auto w-50">

<input class="form-control me-2" type="search" placeholder="Search products">

<button class="btn btn-warning">Search</button>

</form>

<ul class="navbar-nav">

<li class="nav-item">
<a class="nav-link" href="#">Home</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">Products</a>
</li>

<li class="nav-item">
<a class="nav-link" href="history.jsp">My Orders</a>
</li>

<li class="nav-item">
<a class="nav-link" href="cart.jsp">Cart 🛒</a>
</li>

<li class="nav-item dropdown">

<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">

<img src="images/profile.jpg" style="width:35px;height:35px;border-radius:50%;">

</a>

<ul class="dropdown-menu dropdown-menu-end">

<li>
<a class="dropdown-item" href="profile.jsp">My Profile</a>
</li>

<li>
<a class="dropdown-item" href="history.jsp">My Orders</a>
</li>

<li>
<a class="dropdown-item" href="logout.jsp">Logout</a>
</li>

</ul>

</li>

</ul>

</div>

</div>

</nav>
<div class="category-bar">

<a href="mobile.jsp">Mobiles</a>

<a href="#">Men</a>

<div class="dropdown">
<button class="dropbtn">Women ▾</button>
<div class="dropdown-content">
<a href="#">Saree</a>
<a href="#">Kurti</a>
<a href="#">Top</a>
<a href="#">Lehenga</a>
</div>
</div>

<div class="dropdown">
<button class="dropbtn">Kids ▾</button>
<div class="dropdown-content">
<a href="#">T-Shirt</a>
<a href="#">Jeans</a>
<a href="#">Frock</a>
<a href="#">Shorts</a>
</div>
</div>

<a href="#">New Arrivals</a>

<a href="#">Offers</a>

<a href="#">Sale</a>

</div>
<div class="announcement-bar">
  <div class="announcement-text">
    🔥 Big Sale Today &nbsp;&nbsp;&nbsp;
    👕 New Fashion Collection &nbsp;&nbsp;&nbsp;
    🚚 Free Delivery Above ₹999 &nbsp;&nbsp;&nbsp;
    🎉 50% OFF On Kurta Collection &nbsp;&nbsp;&nbsp;
    🛍 Shop Now On Urban Cart &nbsp;&nbsp;&nbsp;
    📞 Customer support : 8459867542 &nbsp; &nbsp;
    📧 ravirajavaghade508@gmail.com &nbsp;&nbsp;&nbsp;
  </div>
</div>
<div id="popup" class="popup">
  <div class="popup-content">

    <span class="close" onclick="closePopup()">×</span>

    <!-- IMAGE -->
    <img src="images/amazon.gif" class="offer-img">

    <!-- TEXT -->
    <h2>🔥 Mega Sale</h2>
    <p>Up to 70% OFF on all products</p>

    <button class="shop-btn">Shop Now</button>

  </div>
</div>
<script>

function toggleTheme(){

document.body.classList.toggle("dark-mode");

}

window.onload = function(){
    setTimeout(()=>{
        document.getElementById("popup").style.display = "flex";
    },1000);
}

function closePopup(){
    document.getElementById("popup").style.display = "none";
}
if(!localStorage.getItem("popupShown")){
    document.getElementById("popup").style.display = "flex";
    localStorage.setItem("popupShown", "true");
}
</script>
<!-- HERO SECTION -->

<div class="container">

<div class="hero">

<div>

<h1>🔥 Big clothing sale </h1>

<p>Up to 50% Discount on Accessories</p>

<button class="btn btn-warning btn-lg">
Shop Now
</button>

</div>

</div>

</div>

<!-- HERO SLIDER -->

<div class="container mt-4">

<div id="heroSlider" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2500">

<div class="carousel-inner">

<div class="carousel-item active">

<img src="images/banner1.jpg" class="d-block w-100 hero-img">

</div>

<div class="carousel-item">

<img src="images/banner2.jpg" class="d-block w-100 hero-img">

</div>

<div class="carousel-item">

<img src="images/banner3.jpg" class="d-block w-100 hero-img">

</div>

<div class="carousel-item">

<img src="images/banner6.png" class="d-block w-100 hero-img">

</div>

</div>

<button class="carousel-control-prev" type="button" data-bs-target="#heroSlider" data-bs-slide="prev">

<span class="carousel-control-prev-icon"></span>

</button>

<button class="carousel-control-next" type="button" data-bs-target="#heroSlider" data-bs-slide="next">

<span class="carousel-control-next-icon"></span>

</button>

</div>

</div>
	
<div class="container">

<h1 class="title">Mens Products</h1>

<div class="products-container">
<%
Connection con = DbConnect.getcon();
PreparedStatement ps = con.prepareStatement("select * from productsss where category='clothes'");
ResultSet rs = ps.executeQuery();

int count = 0;

while(rs.next()){

count++;

if(count==5){
%>

</div>

<h1 class="title">Womens Collection</h1>

<div class="products-container">

<%
}

if(count==9){
%>

</div>

<h1 class="title">Kids Collection</h1>

<div class="products-container">

<%
}
%>

<div class="product-card text-center">

<div class="product-name">

<img src="images/<%=rs.getString("PIMAGE")%>">

<%=rs.getString("PNAME")%>

</div>

<div class="price">
₹ <%=rs.getString("PPRICE")%>
</div>

<form action="<%=request.getContextPath()%>/addcart" method="post">

<input type="hidden" name="pid" value="<%=rs.getString("PID")%>">

<input type="submit"
class="btn cart-btn w-100 mt-3"
value="Add To Cart">

</form>

</div>

<%
}
%>

</div>
</div>
<div class="product-section container mt-5">

<h4 class="mb-3">Customers who viewed items also viewed</h4>

<div class="slider-container">

<button class="arrow left" onclick="scrollLeft()">&#10094;</button>

<div class="product-scroll" id="productScroll">

<div class="product-item">
<img src="images/shirt1.png">
<p>Men Cotton Shirt</p>
<span>₹999</span>
</div>

<div class="product-item">
<img src="images/shirt2.png">
<p>Casual Kurta</p>
<span>₹499</span>
</div>

<div class="product-item">
<img src="images/shirt3.png">
<p>Polo T-Shirt</p>
<span>₹599</span>
</div>

<div class="product-item">
<img src="images/shirt4.png">
<p>Printed Shirt</p>
<span>₹425</span>
</div>

<div class="product-item">
<img src="images/shirt5.png">
<p>Striped Polo</p>
<span>₹1199</span>
</div>

<div class="product-item">
<img src="images/shirt6.png">
<p>Summer Shirt</p>
<span>₹699</span>
</div>

</div>

<button class="arrow right" onclick="scrollRight()">&#10095;</button>

</div>

</div>
<div class="product-section container mt-5">

<h4 class="mb-3">Trending Womens Collection</h4>

<div class="slider-container">

<button class="arrow left" onclick="scrollLeftGirls()">&#10094;</button>

<div class="product-scroll" id="girlsScroll">

<div class="product-item">
<img src="images/girl1.png">
<p>Women Casual Top</p>
<span>₹899</span>
</div>

<div class="product-item">
<img src="images/girl2.png">
<p>Stylish Kurti</p>
<span>₹699</span>
</div>

<div class="product-item">
<img src="images/girl3.png">
<p>Women Summer Dress</p>
<span>₹1299</span>
</div>

<div class="product-item">
<img src="images/girl4.png">
<p>Printed Kurta</p>
<span>₹799</span>
</div>

<div class="product-item">
<img src="images/girl5.png">
<p>Women Cotton Top</p>
<span>₹599</span>
</div>

<div class="product-item">
<img src="images/girl6.png">
<p>Women Party Dress</p>
<span>₹1599</span>
</div>

</div>

<button class="arrow right" onclick="scrollRightGirls()">&#10095;</button>

</div>

</div>
<script>

function scrollLeftElectronics(){
document.getElementById("electronicsScroll").scrollLeft -= 300;
}

function scrollRightElectronics(){
document.getElementById("electronicsScroll").scrollLeft += 300;
}

</script>
<div class="product-section container mt-5">

<h4 class="mb-3">Trending Electronics</h4>

<div class="slider-container">

<button class="arrow left" onclick="scrollLeftElectronics()">&#10094;</button>

<div class="product-scroll" id="electronicsScroll">


<div class="product-item">

<span class="discount">20% OFF</span>

<img src="images/airbuds.png">

<p>Noise Wireless Earbuds</p>

<p class="info">Bluetooth 5.3 | 40H Battery</p>

<div class="rating">
⭐⭐⭐⭐☆ <span>(2134)</span>
</div>

<span class="new">₹1,799</span>
<span class="old">₹2,299</span>

</div>



<div class="product-item">

<span class="discount">18% OFF</span>

<img src="images/powerbank.png">

<p>Mi 20000mAh Power Bank</p>

<p class="info">Fast Charging | Dual USB</p>

<div class="rating">
⭐⭐⭐⭐⭐ <span>(3456)</span>
</div>

<span class="new">₹2,199</span>
<span class="old">₹2,699</span>

</div>



<div class="product-item">

<span class="discount">15% OFF</span>

<img src="images/router.png">

<p>TP-Link WiFi Router</p>

<p class="info">Dual Band | 1200 Mbps</p>

<div class="rating">
⭐⭐⭐⭐☆ <span>(1504)</span>
</div>

<span class="new">₹1,599</span>
<span class="old">₹1,899</span>

</div>



<div class="product-item">

<span class="discount">12% OFF</span>

<img src="images/mouse.png">

<p>Logitech Wireless Mouse</p>

<p class="info">1600 DPI | USB Receiver</p>

<div class="rating">
⭐⭐⭐⭐⭐ <span>(4210)</span>
</div>

<span class="new">₹899</span>
<span class="old">₹1,099</span>

</div>



<div class="product-item">

<span class="discount">22% OFF</span>

<img src="images/gaming.png">

<p>Gaming Headset</p>

<p class="info">7.1 Surround Sound</p>

<div class="rating">
⭐⭐⭐⭐☆ <span>(1932)</span>
</div>

<span class="new">₹2,499</span>
<span class="old">₹3,199</span>

</div>



<div class="product-item">

<span class="discount">25% OFF</span>

<img src="images/watch.png">

<p>Smart Watch</p>

<p class="info">AMOLED | Heart Rate</p>

<div class="rating">
⭐⭐⭐⭐⭐ <span>(5112)</span>
</div>

<span class="new">₹3,999</span>
<span class="old">₹5,499</span>

</div>


</div>

<button class="arrow right" onclick="scrollRightElectronics()">&#10095;</button>

</div>

</div>
<script>

function scrollLeftGirls(){
document.getElementById("girlsScroll").scrollLeft -= 300;
}

function scrollRightGirls(){
document.getElementById("girlsScroll").scrollLeft += 300;
}

</script>
<br><br><br>

<div class="amazon-card">

<h3>Continue shopping deals</h3>

<div class="card-grid">

<div class="grid-item">
<img src="images/laptop.jpg">
<p>Gaming Laptop</p>
</div>

<div class="grid-item">
<img src="images/wireless.png">
<p>Wireless Headphones</p>
</div>

<div class="grid-item">
<img src="images/smart.png">
<p>Smart Watch</p>
</div>

<div class="grid-item">
<img src="images/shose.png">
<p>Running Shoes</p>
</div>

</div>



<a href="https:\\amazon.com" class="see-more">See more deals</a>

</div>

	
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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

<!-- NEWSLETTER -->

<div class="col-lg-3 col-md-6">

<h5>Subscribe</h5>

<p>Get latest offers and updates</p>

<input type="email"
placeholder="Enter your email"
class="form-control mb-2">

<button class="btn btn-warning w-100">
Subscribe
</button>

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

<a href="https://twitter.com/yourusername" target="_blank">
<i class="fab fa-twitter"></i>
</a>

<a href="https://youtube.com/@yourchannel" target="_blank">
<i class="fab fa-youtube"></i>
</a>

<a href="https://t.me/yourusername" target="_blank">
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