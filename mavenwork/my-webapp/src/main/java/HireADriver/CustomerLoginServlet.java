package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javaproject1?useSSL=false&serverTimezone=UTC",
                    "root",
                    "root");

            // ✅ FIXED HERE
            String sql = "SELECT name FROM customers WHERE email=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                // ✅ FIXED HERE
                String name = rs.getString("name");

                HttpSession session = request.getSession();
                session.setAttribute("username", name);
                session.setAttribute("email", email);

                response.sendRedirect("customerdashboard.jsp");

            } else {
                response.getWriter().println("<h3 style='color:red;'>Invalid Email or Password</h3>");
            }

            rs.close();
            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();

            // 🔥 Show real error if anything else fails
            response.getWriter().println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("customerLogin.jsp");
    }
}