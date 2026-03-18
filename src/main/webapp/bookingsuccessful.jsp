
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String message = (String) request.getAttribute("message");
if(message == null){
    message = "Booking Successful!";
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Successful</title>

<style>

body{
    margin:0;
    font-family:Arial, sans-serif;
    background:linear-gradient(135deg,#36d1dc,#5b86e5);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Success Card */

.success-box{
    background:white;
    padding:40px 50px;
    border-radius:10px;
    text-align:center;
    box-shadow:0 6px 20px rgba(0,0,0,0.2);
}

h2{
    color:#2ecc71;
}

p{
    color:#555;
}

/* Button */

.btn{
    margin-top:20px;
    padding:12px 25px;
    background:#3498db;
    color:white;
    text-decoration:none;
    border-radius:5px;
    font-weight:bold;
    display:inline-block;
}

.btn:hover{
    background:#217dbb;
}

</style>

<!-- Auto redirect after 3 seconds -->
<script>

setTimeout(function(){

window.location.href = "<%=request.getContextPath()%>/customerDashboard.jsp";

},3000);

</script>

</head>

<body>

<div class="success-box">

<h2>✅ <%= message %></h2>

<p>Your driver booking has been confirmed.</p>

<p>Redirecting to dashboard in 3 seconds...</p>

<a href="<%=request.getContextPath()%>/customerDashboard.jsp" class="btn">
Go to Dashboard
</a>

</div>

</body>
</html>
