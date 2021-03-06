package ecommerce.controller;
 
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import ecommerce.model.Authenticator;
import ecommerce.model.User;
 
//import sun.text.normalizer.ICUBinary.Authenticate;
 
public class LoginController extends HttpServlet {
private static final long serialVersionUID = 1L;
 
public LoginController() {
super();
}
 
protected void doPost(HttpServletRequest request,
HttpServletResponse response) throws ServletException, IOException {
 
String username = request.getParameter("username");
String password = request.getParameter("password");
RequestDispatcher rd = null;
 
Authenticator authenticator = new Authenticator();
String result = authenticator.authenticate(username, password);
if (result.equals("success")) {
rd = request.getRequestDispatcher("/index.jsp");
User user = new User(username, password);
request.setAttribute("user", user);
} else if(result.equals("admin"))
{
	rd = request.getRequestDispatcher("/admin/index.jsp");
}
else
{
rd = request.getRequestDispatcher("/error.jsp");
}
rd.forward(request, response);
}
 }
