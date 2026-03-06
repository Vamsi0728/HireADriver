<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Book A Driver - Hire A Driver</title>

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

/* Header */

.header{
background:#3a7bd5;
color:white;
padding:15px 30px;
display:flex;
justify-content:space-between;
align-items:center;
}

.header a{
color:white;
text-decoration:none;
font-size:14px;
}

/* Form Container */

.container{
width:420px;
margin:80px auto;
background:white;
padding:35px;
border-radius:10px;
box-shadow:0 6px 18px rgba(0,0,0,0.2);
}

.container h2{
text-align:center;
margin-bottom:25px;
color:#333;
}

/* Inputs */

.input-box{
margin-bottom:18px;
}

.input-box label{
font-size:14px;
color:#444;
}

.input-box input{
width:100%;
padding:10px;
margin-top:6px;
border:1px solid #ccc;
border-radius:5px;
}

/* Radio Buttons */

.trip-type{
margin-top:10px;
}

.trip-type label{
margin-right:15px;
}

/* Button */

.search-btn{
width:100%;
padding:12px;
background:#3a7bd5;
border:none;
color:white;
font-size:16px;
border-radius:5px;
cursor:pointer;
margin-top:15px;
}

.search-btn:hover{
background:#2f62b2;
}

</style>

</head>

<body>

<div class="header">

<h2>Hire A Driver</h2>

<a href="customerDashboard.jsp">Dashboard</a>

</div>

<div class="container">

<h2>Book A Driver</h2>

<form action="SearchDriverServlet" method="post">

<div class="input-box">
<label>Location</label>
<input type="text" name="location" required>
</div>

<div class="input-box">
<label>Date</label>
<input type="date" name="date" required>
</div>

<div class="input-box">
<label>Time</label>
<input type="time" name="time" required>
</div>

<div class="trip-type">
<label>Trip Type</label><br><br>

<input type="radio" name="tripType" value="Hourly"> Hourly

<input type="radio" name="tripType" value="Outstation"> Outstation

<input type="radio" name="tripType" value="FullDay"> Full Day

</div>

<button class="search-btn">Search Driver</button>

</form>

</div>

</body>
</html>