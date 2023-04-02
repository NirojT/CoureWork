package Entity;

import java.sql.Timestamp;
import java.util.Date;

public class User {
	
	private int id;
	private String name;
	private String password;
	private String email;
	private String image;
	private Date date;

	
	
	
	public User() {
		
	}




	public User( String name, String password, String email, String image ,Date date) {
		this.name = name;
		this.password = password;
		this.email = email;
		this.image = image;
		this.date=date;
		
	
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getImage() {
		return image;
	}




	public void setImage(String image) {
		this.image = image;
	}




	



	public Date getDate() {
		return date;
	}




	public void setDate(Date date) {
		this.date = date;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
