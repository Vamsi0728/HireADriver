package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javaproject1",
                    "root",
                    "root");

            if (conn != null) {
                response.getWriter().println("Database Connected Successfully");
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}