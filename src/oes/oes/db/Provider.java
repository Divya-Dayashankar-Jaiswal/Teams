package oes.db;
import java.sql.Connection;

import java.sql.DriverManager;

public class Provider {
	
	public static Connection getOracleConnection()
	{
		Connection con = null;
		try
		{ 
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("getting connection1");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","scottlang");
			System.out.println("getting connection2");
		}
		catch (Exception e) {
			
			// TODO: handle exception
			e.printStackTrace();
                        System.out.println("Got error: "+e);
		}
		
		return con;
	}
}
	