package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
       
  
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter out =  response.getWriter()){
			
				String email = request.getParameter("user_email");
				String password = request.getParameter("user_password");	
				
				UserDao  logindao = new UserDao(ConnectionProvider.getConnection());
		      User u =logindao.getUserByEmailAndPassword(email, password);
			
				
		      if (u == null) {
	                //login.................
//	                error///
//	                out.println("Invalid Details..try again");
		    	  
	                Message msg = new Message("Invalid Details ! try with another", "error", "alert-danger");
	                HttpSession s = request.getSession();
	                s.setAttribute("msg", msg);

	                response.sendRedirect("login_page.jsp");
	            } else {
	                //......
//	                login success
	                HttpSession s = request.getSession();
	                s.setAttribute("currentUser", u);
	                response.sendRedirect("profile.jsp");

	            }

			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
