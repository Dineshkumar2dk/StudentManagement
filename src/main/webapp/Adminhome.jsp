<%@page import="com.qsp.DAO.Student_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qsp.DTO.Student_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table
{
border-style: collpase;
}
</style>
</head>

<body>
	<h1>Student Details</h1>
	<table border="1">
		<thead>
			<tr>
			<td>ID</td>
			<td>NAME</td>
			<td>PHSYSICS</td>
			<td>CHEMISTRY</td>
			<td>MATHS</td>
			<td>EDIT</td>
			<td>DELETE</td>
			</tr>
		</thead>
		<% ArrayList<Student_DTO> al=Student_DAO.FindAllStudent();%>
		<tbody>
		<% if(al!=null){ %>
		<% for(Student_DTO se: al){ %>
		<tr>
		<td><%=se.getId() %></td>
		<td><%=se.getName() %></td>
		<td><%=se.getPhysics() %></td>
		<td><%=se.getChemistry() %></td>
		<td><%=se.getMaths() %></td>
		<td><a href="javascript:void(0);" onclick="Edit(<%=se.getId() %>)">Edit</a></td>
		<td><a href="javascript:void(0);" onclick="Delete(<%=se.getId()%>)" >Delete</a></td>
		</tr>
		<%}} %>
		</tbody>
	</table>
	<a href="Addstudent.jsp">ADD STUDENT</a>
	<a href="index.html">LOGOUT</a>
	<script type="text/javascript">
	function Delete(id){
	let a=confirm("Are you sure want Delete this Record...?")
	if(a)
	{
		window.location.href="deleteservlet?id="+id;
	}}
	function Edit(id){
		let a=confirm("Are you want Edit the Record...")
		if(a)
			{
			window.location.href="editservlet?id="+id;
			}
	}
	</script>
</body>
</html>