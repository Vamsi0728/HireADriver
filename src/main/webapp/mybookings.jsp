<%@ page import="java.sql.*" %>

<%
String email = (String) session.getAttribute("email");

if(email == null){
    response.sendRedirect("customerLogin.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>My Trips</title>

<style>

body{
font-family:Arial;
background:#f4f6f9;
}

.container{
width:900px;
margin:40px auto;
background:white;
padding:25px;
border-radius:8px;
box-shadow:0 3px 10px rgba(0,0,0,0.2);
}

table{
width:100%;
border-collapse:collapse;
}

th,td{
padding:12px;
border:1px solid #ccc;
text-align:center;
}

th{
background:#3498db;
color:white;
}

.backbtn{
display:inline-block;
margin-top:20px;
padding:10px 20px;
background:#3498db;
color:white;
text-decoration:none;
border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<h2 style="text-align:center;">My Trips</h2>

<table>

<tr>
<th>Vehicle</th>
<th>Pickup</th>
<th>Drop</th>
<th>Date</th>
<th>Time</th>
</tr>

<%

boolean hasData = false;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/javaproject1",
"root",
"root");

PreparedStatement ps = conn.prepareStatement(
"SELECT * FROM bookings WHERE customer_email=?");

ps.setString(1,email);

ResultSet rs = ps.executeQuery();

while(rs.next()){

hasData = true;

%>

<tr>
<td><%=rs.getString("vehicle_type")%></td>
<td><%=rs.getString("pickup")%></td>
<td><%=rs.getString("drop_location")%></td>
<td><%=rs.getString("booking_date")%></td>
<td><%=rs.getString("booking_time")%></td>
</tr>

<%
}

if(!hasData){
%>

<tr>
<td colspan="5">No Trips Booked Yet</td>
</tr>

<%
}

conn.close();

}catch(Exception e){
out.println(e);
}

%>

</table>

<div style="text-align:center;">
<a class="backbtn" href="customerdashboard.jsp">Back to Dashboard</a>
</div>

</div>

</body>
</html>