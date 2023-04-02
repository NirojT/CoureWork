package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDB;
import Entity.User;
import Helper.ConnectionProvider;
import Helper.PasswordEncoder;



/*@WebServlet("/RegisterServ")*/
@MultipartConfig
public class RegisterServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterServlets() {
       
    }




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			
			
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String image = request.getParameter("image");
			
			
		//String hashPassword = PasswordEncoder.hashPassword(password);
			Date date = new Date();
			
			User user=new User(name,password,email,image,date);
			
			UserDB userDb=new UserDB(ConnectionProvider.getConnections());
			
			
			

			
			
			if(userDb.saveUser(user)) {
				out.println("done");
				
			
					
				
				
				// response.sendRedirect("loginSuccess.jsp"); 
				
				
			}
			
		} catch (Exception e) {
			out.print("error");
		}
		
		}
		
	}


