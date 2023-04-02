package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;



import Dao.UserDB;
import Entity.Message;
import Entity.User;
import Helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlets
 */

public class LoginServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginServlets() {
    
    }

	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		try {
			

//      login 
//      fetch username and password from request
      String name = request.getParameter("name");
      String password = request.getParameter("password");

      UserDB userDB = new UserDB(ConnectionProvider.getConnections());

    
      
      
      User lUser = userDB.getUserByNameAndPassword(name, password);
      
      
      if (lUser==null) {
    
    	  //error
    	  Message msg = new Message("Invalid Details ! try with another", "error", "alert-danger");
          HttpSession s = request.getSession();
          s.setAttribute("msg", msg);

          response.sendRedirect("login.jsp");
      }else {
		//login success
    	  
    	  
    	  HttpSession session=request.getSession();
    	// After successful login

    	  session.setAttribute("successMessage", "You have been successfully logged in.");

    	  session.setAttribute("currentUser", lUser);
    	  
         response.sendRedirect("profile.jsp");
    	  
	}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
      
	}
	
	
	}




		
		
		
		
		
	


