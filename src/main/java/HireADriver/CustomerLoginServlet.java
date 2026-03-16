package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // If servlet accessed directly
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("customerLogin.jsp");
    }

    // Login logic
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javaproject1",
                    "root",
                    "root");

            String sql = "SELECT * FROM customers WHERE email=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                // create session
                HttpSession session = request.getSession();

                session.setAttribute("username", rs.getString("name"));
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("phone", rs.getString("phone"));

                // go to dashboard
                response.sendRedirect("customerDashboard.jsp");

            } else {

                // login failed
                response.sendRedirect("customerLogin.jsp?error=1");
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}