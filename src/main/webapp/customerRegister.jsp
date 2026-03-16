
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Registration</title>
<style>
body {font-family:Segoe UI;background:linear-gradient(135deg,#3a7bd5,#00d2ff);display:flex;justify-content:center;align-items:center;height:100vh;}
.register-box {background:white;padding:30px;width:380px;border-radius:10px;box-shadow:0 10px 20px rgba(0,0,0,0.2);}
.register-box h2 {text-align:center;margin-bottom:20px;}
input {width:100%;padding:10px;margin:8px 0;border:1px solid #ccc;border-radius:5px;}
button {width:100%;padding:12px;background:#3a7bd5;border:none;color:white;font-size:16px;border-radius:5px;cursor:pointer;}
button:hover {background:#2f62b2;}
.login-link {margin-top:10px;text-align:center;font-size:14px;}
</style>
</head>
<body>

<div class="register-box">

  <h2>Create Account</h2>

  <form action="CustomerRegistrationServlet" method="post">
    <input type="text" name="name" placeholder="Full Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="text" name="phone" placeholder="Phone Number" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Register</button>
  </form>

  <div class="login-link">
    Already have an account? <a href="login.jsp">Login</a>
  </div>

</div>

</body>
</html>
