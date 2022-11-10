package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entities.Register;
import com.model.BLManager;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String useremail = request.getParameter("useremail");
		String userpassword = request.getParameter("userpassword");
		
		Register reg = new Register();
		reg.setUsername(username);
		reg.setUseremail(useremail);
		reg.setUserpassword(userpassword);
		
		BLManager b1 = new BLManager();
		b1.saveregisterinfo(reg);
		response.sendRedirect("Login.jsp");
		
	}

}
