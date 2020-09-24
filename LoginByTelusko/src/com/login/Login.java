package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		LoginDbClass db = new LoginDbClass();
		
		try {
			if(db.check(name,password))
			{
				HttpSession hs = request.getSession();
				hs.setAttribute("name", name);
				hs.setAttribute("pass", password);
				response.sendRedirect("Welcome.jsp");
			}	
			else
				response.sendRedirect("Login.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
