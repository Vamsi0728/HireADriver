package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String vehicleType = request.getParameter("vehicleType");
        String pickup = request.getParameter("pickup");
        String drop = request.getParameter("drop");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javaproject1",
                    "root",
                    "root");

            String sql = "INSERT INTO bookings(customer_email,vehicle_type,pickup,drop_location,booking_date,booking_time) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, vehicleType);
            ps.setString(3, pickup);
            ps.setString(4, drop);
            ps.setString(5, date);
            ps.setString(6, time);

            ps.executeUpdate();

            conn.close();

            response.sendRedirect("myBookings.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    // when user clicks "My Trips"
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("myBookings.jsp");

    }
}