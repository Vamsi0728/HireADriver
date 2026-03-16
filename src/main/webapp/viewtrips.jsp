<%@ page import="java.util.*,HireADriver.Trip" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Trips</title>

<style>

body{
    font-family: Arial, Helvetica, sans-serif;
    background:#f4f6f9;
    margin:0;
    padding:40px;
}

.container{
    width:80%;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:8px;
    box-shadow:0 2px 10px rgba(0,0,0,0.1);
}

h2{
    text-align:center;
    margin-bottom:25px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#3498db;
    color:white;
    padding:12px;
    text-align:center;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f1f1f1;
}

.backBtn{
    display:inline-block;
    margin-top:20px;
    padding:10px 18px;
    background:#3498db;
    color:white;
    text-decoration:none;
    border-radius:5px;
}

.backBtn:hover{
    background:#2980b9;
}

</style>
</head>

<body>

<div class="container">

<h2>My Trips</h2>

<table>

<tr>
<th>Pickup Location</th>
<th>Drop Location</th>
<th>Date</th>
<th>Time</th>
<th>Amount</th>
</tr>

<%
ArrayList<Trip> list = (ArrayList<Trip>)request.getAttribute("tripList");

if(list != null){
    for(Trip t : list){
%>

<tr>
<td><%=t.getPickup()%></td>
<td><%=t.getDrop()%></td>
<td><%=t.getDate()%></td>
<td><%=t.getTime()%></td>
<td><%=t.getAmount()%></td>
</tr>

<%
    }
}
%>

</table>

<a href="customerDashboard.jsp" class="backBtn">Back</a>

</div>

</body>
</html>