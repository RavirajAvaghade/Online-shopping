<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Premium Login</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background: linear-gradient(-45deg,#ff6a00,#ee0979,#00c6ff,#0072ff);
background-size:400% 400%;
animation: gradientMove 10s ease infinite;
overflow:hidden;
}

/* gradient animation */

@keyframes gradientMove{

0%{
background-position:0% 50%;
}

50%{
background-position:100% 50%;
}

100%{
background-position:0% 50%;
}

}

/* floating bubbles */

.circle{
position:absolute;
border-radius:50%;
background:rgba(255,255,255,0.15);
animation:float 6s infinite ease-in-out;
}

.circle1{
width:200px;
height:200px;
top:10%;
left:10%;
}

.circle2{
width:150px;
height:150px;
bottom:15%;
right:15%;
animation-delay:2s;
}

.circle3{
width:120px;
height:120px;
top:70%;
left:25%;
animation-delay:4s;
}

@keyframes float{

0%{transform:translateY(0);}
50%{transform:translateY(-30px);}
100%{transform:translateY(0);}

}

/* login card */

.login-card{

width:380px;
padding:40px;
border-radius:20px;
background:rgba(255,255,255,0.15);
backdrop-filter: blur(15px);
box-shadow:0 20px 40px rgba(0,0,0,0.3);
text-align:center;
color:white;
animation:fadeIn 1s ease;

}

@keyframes fadeIn{

from{
opacity:0;
transform:translateY(40px);
}

to{
opacity:1;
transform:translateY(0);
}

}

/* icon */

.user-icon{

font-size:65px;
margin-bottom:20px;

}

/* inputs */

.form-control{

border-radius:10px;
padding:12px;
border:none;

}

.form-control:focus{

box-shadow:0 0 12px white;
transform:scale(1.03);

}

/* button */

.login-btn{

background:white;
color:#ee0979;
font-weight:bold;
border-radius:10px;
padding:12px;
transition:0.3s;

}

.login-btn:hover{

transform:scale(1.08);
box-shadow:0 10px 25px rgba(0,0,0,0.4);

}

.register a{

color:white;
font-weight:bold;
text-decoration:none;

}

.register a:hover{

text-decoration:underline;

}

</style>

</head>

<body>

<div class="circle circle1"></div>
<div class="circle circle2"></div>
<div class="circle circle3"></div>

<div class="login-card">

<i class="fa-solid fa-user-circle user-icon"></i>

<h3 class="mb-4">Login</h3>

<form action="login" method="post">

<div class="mb-3">
<input type="text" class="form-control" name="uname" placeholder="Username" required>
</div>

<div class="mb-3">
<input type="password" class="form-control" name="password" placeholder="Password" required>
</div>

<button class="btn login-btn w-100">Login</button>

</form>

<div class="mt-3 register">

<p>New User ?</p>
<a href="register.jsp">Create Account</a>

</div>

</div>

</body>
</html>