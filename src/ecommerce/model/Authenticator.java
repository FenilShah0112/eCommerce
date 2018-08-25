package ecommerce.model;
import java.sql.Connection;
import java.sql.DriverManager;
import ecommerce.util.DBconnection;

public class Authenticator 
{
	Connection con = null;
	
	public String authenticate(String username, String password) 
	{
		if (("".equalsIgnoreCase(username)) && ("".equals(password))) 
		{
			return "success";
		} 
		else 
		{
			return "failure";
		}
	}
}
