package project;
import java.sql.*;

public class ConnectionProviderClass {
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","sys123");
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
}
