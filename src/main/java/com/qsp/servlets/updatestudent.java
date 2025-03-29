package com.qsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.Student_DAO;


@WebServlet("/updatestudent")
public class updatestudent extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int a=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		Double physics=Double.parseDouble(req.getParameter("phy"));
		Double chemistry=Double.parseDouble(req.getParameter("che"));
		Double maths=Double.parseDouble(req.getParameter("mat"));
		
		int st=Student_DAO.Updatestudent(a, name, physics, chemistry, maths);
		if(st==1)
		{
			req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
		}
	}

}
