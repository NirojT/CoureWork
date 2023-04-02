package Servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UserDB;
import Entity.User;
import Helper.ConnectionProvider;

/**
 * Servlet implementation class UpdateUserServlet
 */

public class UpdateUserServlet extends HttpServlet {
	
	UserDB userDB=new UserDB(ConnectionProvider.getConnections());
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void service (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  String uid = request.getParameter("userid");
		    int userid =Integer.parseInt(uid);

	 
		 
		 
		String recievedName = request.getParameter("name");
		String recievedEmail = request.getParameter("email");
		String recievedPassword = request.getParameter("password");
		String recievedImage = request.getParameter("image");
		
		
	
	System.out.println(userid+recievedEmail+recievedName+recievedPassword+recievedImage);
	   
		
		User user=new User();
		user.setId(userid);
		user.setName(recievedName);
		user.setEmail(recievedEmail);
		user.setPassword(recievedPassword);
		user.setImage(recievedImage);
		
		
		
		

		
		System.out.println("above if");
		if(userDB.updateUser(user)) {
			System.out.println("inside if");
		
		response.sendRedirect("profile.jsp");
	    }
		else {
			response.sendRedirect("error_page.jsp");
		}
		
	}

	
		
	    
		 
	}


