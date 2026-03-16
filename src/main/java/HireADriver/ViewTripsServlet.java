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
                    "jdbc:mysql://localhost:3306/javaproject1",
                    "root",
                    "root");

            String sql = "SELECT pickup, drop_location, booking_date, booking_time, amount FROM bookings";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

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

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}