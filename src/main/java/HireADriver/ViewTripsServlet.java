package HireADriver;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/ViewTripsServlet")
public class ViewTripsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<Trip> tripList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javaproject1?useSSL=false&serverTimezone=UTC",
                    "root",
                    "root");

            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");

            if (email == null) {
                response.sendRedirect("customerLogin.jsp");
                return;
            }

            String sql = "SELECT pickup, drop_location, booking_date, booking_time, amount FROM bookings WHERE customer_email=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Trip t = new Trip(
                        rs.getString("pickup"),
                        rs.getString("drop_location"),
                        rs.getString("booking_date"),
                        rs.getString("booking_time"),
                        rs.getDouble("amount")
                );
                tripList.add(t);
            }

            request.setAttribute("tripList", tripList);
            RequestDispatcher rd = request.getRequestDispatcher("viewTrips.jsp");
            rd.forward(request, response);

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}