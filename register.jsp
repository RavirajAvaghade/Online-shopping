<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

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
background: linear-gradient(-45deg,#00c9ff,#92fe9d,#ff758c,#ff7eb3);
background-size:400% 400%;
animation:gradientMove 12s ease infinite;
overflow:hidden;
}

/* animated gradient */

@keyframes gradientMove{

0%{background-position:0% 50%;}
50%{background-position:100% 50%;}
100%{background-position:0% 50%;}

}

/* floating shapes */

.shape{
position:absolute;
border-radius:50%;
background:rgba(255,255,255,0.15);
animation:float 6s infinite ease-in-out;
}

.shape1{
width:220px;
height:220px;
top:10%;
left:15%;
}

.shape2{
width:160px;
height:160px;
bottom:15%;
right:15%;
animation-delay:2s;
}

.shape3{
width:120px;
height:120px;
top:70%;
left:25%;
animation-delay:4s;
}

@keyframes float{

0%{transform:translateY(0);}
50%{transform:translateY(-40px);}
100%{transform:translateY(0);}

}

/* glass card */

.register-card{

width:400px;
padding:45px;
border-radius:20px;
background:rgba(255,255,255,0.15);
backdrop-filter: blur(18px);
box-shadow:0 25px 45px rgba(0,0,0,0.35);
text-align:center;
color:white;
animation:fadeIn 1s ease;

}

@keyframes fadeIn{

from{opacity:0; transform:translateY(40px);}
to{opacity:1; transform:translateY(0);}

}

/* icon */

.main-icon{

font-size:70px;
margin-bottom:20px;

}

/* input group */

.input-group-text{

background:white;
border:none;
}

/* inputs */

.form-control{

border:none;
padding:12px;

}

.form-control:focus{

box-shadow:0 0 12px white;
transform:scale(1.02);

}

/* button */

.register-btn{

background:white;
color:#ff4e8a;
font-weight:bold;
border-radius:10px;
padding:12px;
transition:0.3s;
border:none;

}

.register-btn:hover{

transform:scale(1.08);
box-shadow:0 10px 25px rgba(0,0,0,0.4);

}

/* link */

.back-link a{

color:white;
font-weight:bold;
text-decoration:none;

}

.back-link a:hover{

text-decoration:underline;

}

</style>

</head>

<body>

<div class="shape shape1"></div>
<div class="shape shape2"></div>
<div class="shape shape3"></div>

<div class="register-card">

<i class="fa-solid fa-user-plus main-icon"></i>

<h3 class="mb-4">Create Account</h3>

<form action="register" method="post">

<div class="input-group mb-3">

<span class="input-group-text">
<i class="fa-solid fa-user"></i>
</span>

<input type="text" class="form-control" name="uname" placeholder="Username" required>

</div>

<div class="input-group mb-3">

<span class="input-group-text">
<i class="fa-solid fa-lock"></i>
</span>

<input type="password" class="form-control" name="password" placeholder="Password" required>

</div>

<button class="btn register-btn w-100">Register</button>

</form>

<div class="mt-3 back-link">

<p>Already have account?</p>

<a href="index.jsp">Back to Login</a>

</div>

</div>

</body>
</html>