package HireADriver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String email = request.getParameter("email");
String password = request.getParameter("password");

if(email.equals("admin") && password.equals("admin"))
{
response.sendRedirect("customerdashboard.jsp");
}
else
{
response.getWriter().println("Invalid Email or Password");
}

}

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

response.sendRedirect("customerLogin.jsp");

}

}