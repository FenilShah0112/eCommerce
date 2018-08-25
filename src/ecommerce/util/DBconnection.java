package ecommerce.util;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBconnection 
{	
	public static Connection createConnection()
	{
		Connection con = null;
		String url = "jdbc:mysql://localhost:80/ecommerce"; //MySQL URL and followed by the database name
		String username = "";
		String password = "";
		try 
		{
			try 
			{	
				Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver 
			}		 
			catch (ClassNotFoundException e)
			{
				e.printStackTrace();
			} 
			con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con; 
	}
}