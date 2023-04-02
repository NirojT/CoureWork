package Helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	
	public static Connection con;
	
	public static Connection getConnections() {
		
		try {
			if(con==null) {
				
				Class.forName("com.mysql.cj.jdbc.Driver");	
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3307/Eco","root","admin");
				
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return con;
		
	}

}




