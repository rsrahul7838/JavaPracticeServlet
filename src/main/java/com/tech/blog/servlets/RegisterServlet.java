package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */

/*
 * create a annotation because in js content type false hai in register.js me to is servlet ko pta nhi lg rha
 * kaise data ja rha hai so by using any data can be transer
 */
@MultipartConfig
public class RegisterServlet extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {

    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try( PrintWriter out   = response.getWriter()){
			/* fetching all the registration form data */
			
			String check =request.getParameter("check");
			if(check ==null) {
				out.println("Please select the checkbox");
			}
			else {
				
				String name     = request.getParameter("user_name");
				String email    = request.getParameter("user_email");
				String password = request.getParameter("user_password");
				String gender   = request.getParameter("gender");
				String about    = request.getParameter("about");
				
				User user =new User(name, email, password, gender, about);
				
				/*
				 * create user dao object because we have already written the code in userdao
				 * class
				 */
				/* then we require connection so we get from connectionprovider class */
				UserDao dao =new UserDao(ConnectionProvider.getConnection());
				/* now we call method of userdao and pass the user object*/ 
				if(dao.saveUser(user)) {
					out.println("done");
				}
				else {
					out.println("error...");
				}
			}
				
		}catch(Exception e) {
			
		}
	}

}
