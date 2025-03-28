<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<body>
<div>
   <h2>ADD STUDENT</h2>
  <form action="addstudent" method="get">
 
  <table>
    <tr>
   
    <td>
    <label for="id">ID:</label></td>
    <td><input type="number" id="id" name="id">
    </td>
    </tr>
     <tr>
    <td>
    <label for="name">NAME:</label></td>
    <td><input type="text" id="name" name="name">
    </td>
    </tr>
     <tr>
    <td>
    <label for="physics">PHYSICS MARK:</label></td>
    <td><input type="number" id="physics" name="phy">
    </td>
    </tr>
     <tr>
    <td>
    <label for="chemistry">CHEMISTRY MARK:</label></td>
    <td><input type="number" id="chemistry" name="che">
    </td>
    </tr>
    <tr>
    <td>
    <label for="maths">MATHS MARK:</label></td>
    <td><input type="number" id="maths" name="mat">
    </td>
    </tr>
  </table>

  <button>SUBMIT</button>
   </form>
   </div>
</body>
</html>