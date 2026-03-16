
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Available Drivers - Hire A Driver</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, Arial;
}

body{
background:#f4f6f9;
}

.header{
background:#3a7bd5;
color:white;
padding:15px 30px;
display:flex;
justify-content:space-between;
align-items:center;
}

.container{
padding:40px;
}

.title{
text-align:center;
margin-bottom:30px;
color:#333;
}

.drivers{
display:flex;
justify-content:center;
gap:30px;
flex-wrap:wrap;
}

.card{
width:230px;
background:white;
padding:20px;
border-radius:10px;
box-shadow:0 5px 15px rgba(0,0,0,0.2);
text-align:center;
}

.card h3{
color:#333;
margin-bottom:10px;
}

.card p{
font-size:14px;
margin-bottom:6px;
}

.book-btn{
margin-top:10px;
padding:10px 15px;
background:#3a7bd5;
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}

.book-btn:hover{
background:#2f62b2;
}

</style>

</head>

<body>

<div class="header">
<h2>Hire A Driver</h2>
<a href="customerDashboard.jsp" style="color:white;text-decoration:none;">Dashboard</a>
</div>

<div class="container">

<h2 class="title">Available Drivers</h2>

<div class="drivers">

<div class="card">
<h3>Ramesh</h3>
<p>Rating: 4.5 ⭐</p>
<p>Experience: 5 years</p>
<p>Price: ₹200/hr</p>
<button class="book-btn">Book Now</button>
</div>

<div class="card">
<h3>Suresh</h3>
<p>Rating: 4.7 ⭐</p>
<p>Experience: 7 years</p>
<p>Price: ₹250/hr</p>
<button class="book-btn">Book Now</button>
</div>

<div class="card">
<h3>Mahesh</h3>
<p>Rating: 4.3 ⭐</p>
<p>Experience: 4 years</p>
<p>Price: ₹180/hr</p>
<button class="book-btn">Book Now</button>
</div>

<div class="card">
<h3>Ravi</h3>
<p>Rating: 4.6 ⭐</p>
<p>Experience: 6 years</p>
<p>Price: ₹220/hr</p>
<button class="book-btn">Book Now</button>
</div>

</div>

</div>

</body>
</html>
