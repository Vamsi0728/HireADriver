package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CustomerRegistrationServlet")
public class CustomerRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        out.println("<html>");
        out.println("<head><title>Registration Success</title></head>");
        out.println("<body style='font-family:Arial;text-align:center;margin-top:100px;'>");

        out.println("<h2>Registration Successful!</h2>");
        out.println("<p>Welcome " + name + "</p>");
        out.println("<a href='login.jsp'>Go to Login Page</a>");

        out.println("</body>");
        out.println("</html>");
    }
}