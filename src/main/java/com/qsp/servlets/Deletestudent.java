package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.Student_DAO;

@WebServlet("/deletestudent")
public class Deletestudent extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		Student_DAO s=new Student_DAO();
		try {
			int a=s.DeleteStudent(id);
			if(a==1)
			{
				req.setAttribute("message", a+"data has been deleted");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);;
			}
			else
			{ 
				req.setAttribute("message", "no data deleted");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);;
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
