<%@page import="com.qsp.DTO.Student_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<%Student_DTO st=(Student_DTO)request.getAttribute("student"); %>
  
   <h2>UPDATE STUDENT DETAILS</h2>
  <form action="updatestudent" method="get">
 
  <table>
    <tr>
   
    <td>
    <label for="id">ID:</label></td>
    <td><input type="number" id="id" name="id" value="<%=st.getId() %>" readonly >
    </td>
    </tr>
     <tr>
    <td>
    <label for="name">NAME:</label></td>
    <td><input type="text" id="name" name="name" value="<%=st.getName() %>">
    </td>
    </tr>
     <tr>
    <td>
    <label for="physics">PHYSICS MARK:</label></td>
    <td><input type="number" id="physics" name="phy" value="<%=st.getPhysics()%>">
    </td>
    </tr>
     <tr>
    <td>
    <label for="chemistry">CHEMISTRY MARK:</label></td>
    <td><input type="number" id="chemistry" name="che" value="<%=st.getChemistry()%>">
    </td>
    </tr>
    <tr>
    <td>
    <label for="maths">MATHS MARK:</label></td>
    <td><input type="number" id="maths" name="mat" value="<%=st.getMaths()%>">
    </td>
    </tr>
  </table>

  <button>SUBMIT</button>
   </form>
   </div>
   
   
</body>
</html>