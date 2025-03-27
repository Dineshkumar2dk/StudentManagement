package com.qsp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;
import com.qsp.DTO.Student_DTO;

public class Student_DAO {

	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///office");
		return con;
	}
	public  static int Addstudent(int id,String name,Double physics,Double chemistry,Double maths) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pt=con.prepareStatement("insert into student values(?,?,?,?,?)");
		pt.setInt(1, id);
		pt.setString(2, name);
		pt.setDouble(3, physics);
		pt.setDouble(4, chemistry);
		pt.setDouble(5, maths);
		int a=pt.executeUpdate();
		return a;
	}
	public static int DeleteStudent(int id) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pt=con.prepareStatement("delete from student where id=?");
		pt.setInt(1, id);
		int a=pt.executeUpdate();
		return a;
	}
	public static Student_DTO FindStudent(int id) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pt=con.prepareStatement("select * from student where id=?");
		pt.setInt(1, id);
		ResultSet rs=pt.executeQuery();
		if(rs.next())
		{
			Student_DTO s=new Student_DTO(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getDouble(4),rs.getDouble(5));
			return s; 
		}
		else
		{
			return null;
		}
	}
	public static Student_DTO FindAllStudent() throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pt=con.prepareStatement("select * from student ");
		ResultSet rs=pt.executeQuery();
		while(rs.next())
		{
			Student_DTO s=new Student_DTO(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getDouble(4),rs.getDouble(5));
			return s; 
		}
		return null;
	}
	public  static int SaveAdmin(int id,String name,Long contact,String email,String password) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pt=con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pt.setInt(1, id);
		pt.setString(2, name);
		pt.setDouble(3, contact);
		pt.setString(4, email);
		pt.setString(5, password);
		int a=pt.executeUpdate();
		return a;
	}
	public static Boolean FindAdmin(String email,String password) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pt=con.prepareStatement("select * from admin where  email=? and password=?");
		pt.setString(1, email);
		pt.setString(2, password);
		ResultSet rs=pt.executeQuery();
		if(rs.next())
		{
			return true;
		}
		else
		{
			return false;
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
