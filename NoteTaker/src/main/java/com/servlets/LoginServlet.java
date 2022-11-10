package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.Register;
import com.model.BLManager;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		
		Register reg = new Register();
		BLManager b1 = new BLManager();
		reg = b1.searchbyemailpass(username,userpassword);
		
		if(reg!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			RequestDispatcher  rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
		}
		else
		{
			response.sendRedirect("Login.jsp");
		}
		
	}

}
