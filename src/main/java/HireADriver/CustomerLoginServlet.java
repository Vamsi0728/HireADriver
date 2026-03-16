package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {

            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect database
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javaproject1",
                    "root",
                    "root");

            // Check login
            String sql = "SELECT full_name FROM customers WHERE email=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                // Get customer name
                String fullName = rs.getString("full_name");

                // Create session
                HttpSession session = request.getSession();

                // Store data in session
                session.setAttribute("username", fullName);
                session.setAttribute("email", email);

                // Redirect to dashboard
                response.sendRedirect("customerdashboard.jsp");

            } else {

                response.getWriter().println("<h3 style='color:red;'>Invalid Email or Password</h3>");

            }

            conn.close();

        } catch (Exception e) {

            e.printStackTrace();
            response.getWriter().println("<h3 style='color:red;'>Database Error</h3>");

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("customerLogin.jsp");
    }
}