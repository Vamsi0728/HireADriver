<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Dashboard - Hire A Driver</title>

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

.header h2{
letter-spacing:1px;
}

.logout{
color:white;
text-decoration:none;
font-size:14px;
}

.container{
padding:40px;
text-align:center;
}

.cards{
display:flex;
justify-content:center;
gap:30px;
margin-top:40px;
}

.card{
width:200px;
background:white;
padding:25px;
border-radius:10px;
box-shadow:0 5px 15px rgba(0,0,0,0.2);
transition:0.3s;
}

.card:hover{
transform:translateY(-5px);
}

.card h3{
margin-bottom:10px;
color:#333;
}

.card a{
text-decoration:none;
color:#3a7bd5;
font-weight:bold;
}

</style>

</head>

<body>

<div class="header">

<h2>Hire A Driver</h2>

<a class="logout" href="customerLogin.jsp">Logout</a>

</div>


<div class="container">

<h1>Welcome Customer</h1>
<p>Select an option below</p>

<div class="cards">

<div class="card">
<h3>Book Driver</h3>
<a href="bookDriver.jsp">Open</a>
</div>

<div class="card">
<h3>My Bookings</h3>
<a href="myBookings.jsp">View</a>
</div>

<div class="card">
<h3>Profile</h3>
<a href="customerProfile.jsp">Open</a>
</div>

</div>

</div>

</body>
</html>