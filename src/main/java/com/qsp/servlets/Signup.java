package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.Student_DAO;
import com.qsp.DTO.Student_DTO;

@WebServlet("/adminsignup")
public class Signup extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		Long contact=Long.parseLong(req.getParameter("contact"));
		String Email=req.getParameter("email");
		String Password=req.getParameter("password");
		String Rpassword=req.getParameter("rpassword");
		
		
		try {
			
			int a=Student_DAO.SaveAdmin(id, name, contact, Email, Password,Rpassword);
			if(a==1)
			{
				
				req.getRequestDispatcher("Adminlogin.jsp").include(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}

