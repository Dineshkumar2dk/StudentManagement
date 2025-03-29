package com.qsp.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qsp.DAO.Student_DAO;
import com.qsp.DTO.Student_DTO;

@WebServlet("/findallstudentservlet")
public class Findallstudent  extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ArrayList<Student_DTO> s=Student_DAO.FindAllStudent();
			if(s!=null) {
				req.setAttribute("student", s);
			req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
