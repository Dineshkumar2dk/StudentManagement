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

@WebServlet("/addstudent")
public class Addstudent extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		Double physics=Double.parseDouble(req.getParameter("phy"));
		Double chemistry=Double.parseDouble(req.getParameter("che"));
		Double maths=Double.parseDouble(req.getParameter("mat"));
		
		
		try {
			int a=Student_DAO.Addstudent(id, name, physics, chemistry, maths);
			if(a==1)
			{
				req.setAttribute("message", "student details added successfully....");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
			}
			else
			{ 
				req.setAttribute("message", "student not added .....");
				req.getRequestDispatcher("Addstudent.jsp").include(req, resp);
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}


