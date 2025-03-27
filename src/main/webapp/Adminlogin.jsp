<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ADMIN LOGIN PAGE</h1>
 <form action="Adminhome.jsp" method="post">
 
  <table>
    <tr>
    <td><label for="email">EMAIL:</label></td>
    <td><input type="email" id="email" name="email"> </td>
    </tr> 
     <tr>
    <td><label for="pass">PASSWORD:</label></td>
    <td><input type="text" id="pass" name="password"> </td>
    </tr> 
  </table>

  <button>SUBMIT</button>
  <p>Not a user....?</p>
  <a href="Adminsignup.jsp">SignUp</a>
   </form>
</body>
</html>