package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;

import Entity.User;
import Helper.ConnectionProvider;

public class UserDB {

	private  Connection con;

	// creating constructor using fields
	public UserDB(Connection con) {

		this.con = con;
	}

	

	// inserting user in database

	public boolean saveUser(User user) {
		Boolean t = false;

		try {
			String insertTable = "insert into User(name,password,email,image,date) values(?,?,?,?,?)";
			Date date = new Date();
			PreparedStatement pstmt = con.prepareStatement(insertTable);
			pstmt.setString(1,user.getName());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.getEmail());
			pstmt.setString(4,user.getImage());
			pstmt.setDate(5, new java.sql.Date(date.getTime()));

			pstmt.executeUpdate();

			t = true;

		} catch (Exception e) {
			e.printStackTrace();

		}

		return t;

	}
	
	
	// get user by useremail and userpassword:
    public User getUserByNameAndPassword(String name, String password) throws SQLException {
        User user = null;

        

            String q = "select * from user where name = ? and password=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, name);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
            	
            	user=new User();
               
//              set to user object
//                   user.setId(rs.getInt("id"));
                     user.setName(rs.getString("name"));
                     user.setPassword(rs.getString("password"));
                     user.setEmail(rs.getString("email"));
                     user.setImage(rs.getString("image"));
                     user.setDate(rs.getDate("date"));
                 
                     
                     return user;
             
                 }
			return user;
    }
            	
			
				
//			}UPDATE `eco`.`user` SET `name` = 'eee', `email` = 'eee1tss@gmail.com' WHERE (`id` = '30');
  
    //updating the user
    public Boolean updateUser(User user) {
    	
    	try {
			String alter = "UPDATE User SET  name = ?,password=?, email = ? , image=?, date=? WHERE id = ?";
			
			System.out.println();
					
					
			Date date = new Date();
			PreparedStatement pstmt = con.prepareStatement(alter);
			
			
			pstmt.setString( 1,user.getName());
			
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.getEmail());
			pstmt.setString(4,user.getImage());
			   pstmt.setDate(5, (java.sql.Date) user.getDate());
			   pstmt.setInt( 6,user.getId());
		
			
    	System.out.println("done");
			pstmt.executeUpdate();
			
    	}catch (Exception e) {
	e.printStackTrace();
}
		return true;
    	
    	
    }



	/*
	 * public User getUserById(int userid) {
	 * 
	 * 
	 * User user= new User(); PreparedStatement stmt = null; ResultSet rs = null;
	 * 
	 * try {
	 * 
	 * System.out.println("get"); // Get a connection to the database con =
	 * ConnectionProvider.getConnections();
	 * 
	 * // Create the SQL statement to retrieve the user with the given ID String sql
	 * = "SELECT * FROM user WHERE id = ?";
	 * 
	 * // Prepare the statement with the SQL statement stmt =
	 * con.prepareStatement(sql);
	 * 
	 * // Set the parameter for the user ID stmt.setInt(1, user.getId());
	 * 
	 * // Execute the query rs = stmt.executeQuery();
	 * 
	 * // Check if the query returned a row if (rs.next()) {
	 * 
	 * 
	 * // If a row was returned, create a new User object with the data from the row
	 * user = new User(); user.setId(rs.getInt("id"));
	 * user.setName(rs.getString("name")); user.setEmail(rs.getString("email"));
	 * user.setPassword(rs.getString("password"));
	 * user.setImage(rs.getString("image")); } } catch (SQLException ex) { // Handle
	 * any errors that occurred during the query ex.printStackTrace(); } finally {
	 * // Close the resources in the reverse order they were opened try { if (rs !=
	 * null) { rs.close(); } if (stmt != null) { stmt.close(); } if (con != null) {
	 * con.close(); } } catch (SQLException ex) { ex.printStackTrace(); } }
	 * 
	 * // Return the User object, or null if no row was returned return user; }
	 */
		}

		

            
        
               


       

       
        
        
    
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


