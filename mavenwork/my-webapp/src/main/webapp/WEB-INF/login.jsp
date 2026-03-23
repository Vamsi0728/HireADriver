<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Hire A Driver - Customer Login</title>

<style>
/* Your existing styles here (same as your previous login.jsp) */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:Segoe UI, Arial;
}
body{
  height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
  background: linear-gradient(135deg,#3a7bd5,#00d2ff);
}
.login-container{
  text-align:center;
}
.project-title{
  font-size:32px;
  font-weight:bold;
  color:white;
  margin-bottom:20px;
  letter-spacing:1px;
}
.login-box{
  width:360px;
  background:white;
  padding:35px;
  border-radius:10px;
  box-shadow:0 10px 25px rgba(0,0,0,0.2);
}
.login-box h2{
  margin-bottom:20px;
  color:#333;
}
.input-box{
  margin-bottom:18px;
  text-align:left;
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
.input-box input:focus{
  border-color:#3a7bd5;
  outline:none;
}
.login-btn{
  width:100%;
  padding:12px;
  background:#3a7bd5;
  border:none;
  color:white;
  font-size:16px;
  border-radius:5px;
  cursor:pointer;
}
.login-btn:hover{
  background:#2f62b2;
}
.links{
  margin-top:12px;
  font-size:14px;
}
.links a{
  text-decoration:none;
  color:#3a7bd5;
}
.register{
  margin-top:15px;
  font-size:14px;
}
.register a{
  color:#3a7bd5;
  text-decoration:none;
  font-weight:600;
}
</style>

</head>

<body>

<div class="login-container">

  <div class="project-title">Hire A Driver</div>

  <div class="login-box">

    <h2>Customer Login</h2>

    <form action="CustomerLoginServlet" method="post">

      <div class="input-box">
        <label>Email</label>
        <input type="text" name="email" required>
      </div>

      <div class="input-box">
        <label>Password</label>
        <input type="password" name="password" required>
      </div>

      <button class="login-btn">Login</button>

      <div class="links">
        <a href="forgotPassword.jsp">Forgot Password?</a>
      </div>

    </form>

    <div class="register">
      New User? <a href="RegistrationPageServlet">Create Account</a>
    </div>

  </div>

</div>

</body>
</html>