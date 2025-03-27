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

@WebServlet("/adminlogin")
public class Login extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Email=req.getParameter("email");
		String Password=req.getParameter("password");
		
		Student_DAO s=new Student_DAO();
		try {
			Boolean option=s.FindAdmin(Email,Password);
			if(Email=="Admin@gmail.com"&& Password=="Admin")
			{
				req.setAttribute("message", "login succesful");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
			}
			else
			{
				req.setAttribute("message", "login Failure....");
				req.getRequestDispatcher("Adminlogin.jsp").include(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
