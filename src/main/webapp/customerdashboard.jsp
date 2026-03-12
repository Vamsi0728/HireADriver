
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String username = (String) session.getAttribute("username");
if (username == null) {
	username = "Customer";
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #43cea2, #185a9d);
}

/* Navbar */
.navbar {
	background: #1f2d3d;
	padding: 15px 30px;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.nav-links a {
	color: white;
	margin-left: 20px;
	text-decoration: none;
	font-weight: bold;
}

/* Container */
.container {
	width: 950px;
	margin: 40px auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.welcome {
	text-align: center;
	margin-bottom: 20px;
}

/* Booking section */
.booking-box {
	background: #f7f9fc;
	padding: 25px;
	border-radius: 8px;
	border-left: 6px solid #3498db;
}

input, select {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	border-radius: 4px;
	border: 1px solid #ccc;
}

.btn {
	margin-top: 10px;
	padding: 12px 20px;
	background: #3498db;
	border: none;
	color: white;
	border-radius: 4px;
	cursor: pointer;
}

.btn:hover {
	background: #217dbb;
}

/* Cards */
.actions {
	display: flex;
	justify-content: space-between;
	margin-top: 30px;
}

.card {
	width: 30%;
	padding: 20px;
	border-radius: 8px;
	color: white;
	text-align: center;
}

.card a {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

.drivers {
	background: #3498db;
}

.trips {
	background: #9b59b6;
}

.payments {
	background: #e67e22;
}
</style>

</head>

<body>

	<div class="navbar">

		<div>
			<strong>🚗 Hire A Driver</strong>
		</div>

		<div class="nav-links">
			<a href="profile.jsp">Profile</a> <a href="myBookings.jsp">My
				Trips</a> <a href="LogoutServlet">Logout</a>
		</div>

	</div>

	<div class="container">

		<div class="welcome">
			<h2>
				Welcome,
				<%=username%></h2>
		</div>

		<div class="booking-box">

			<h3>Book a Driver</h3>

			<form action="BookingServlet" method="post">

				<select name="vehicleType" required>
					<option value="">Select Vehicle Type</option>
					<option value="Car">Car</option>
					<option value="Bike">Bike</option>
				</select> <input type="text" name="pickup" placeholder="Pickup Location"
					required> <input type="text" name="drop"
					placeholder="Drop Location" required> <select
					name="bookingType">
					<option value="instant">Instant Booking</option>
					<option value="schedule">Schedule Booking</option>
				</select> <input type="date" name="date"> <input type="time"
					name="time">

				<button class="btn">Book Driver</button>

			</form>

		</div>

		<div class="actions">

			<div class="card drivers">
				<h3>Drivers</h3>
				<p>See available drivers</p>
				<a href="viewDrivers.jsp">View Drivers</a>
			</div>

			<div class="card trips">
				<h3>My Trips</h3>
				<p>Check your bookings</p>
				<a href="myBookings.jsp">View Trips</a>
			</div>

			<div class="card payments">
				<h3>Payments</h3>
				<p>Payment history</p>
				<a href="payments.jsp">View Payments</a>
			</div>

		</div>

	</div>

</body>
</html>
