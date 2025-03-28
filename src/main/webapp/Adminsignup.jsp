<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="adminsignup" method="get">
 <table>
    <tr>
    <td><label for="id">ID:</label></td>
    <td><input type="number" id="id" name="id"> </td>
    </tr> 
    <tr>
    <td><label for="name">NAME:</label></td>
    <td><input type="text" id="name" name="name"> </td>
    </tr> 
    <tr>
    <td><label for="contact">CONTACT:</label></td>
    <td><input type="number" id="contact" name="contact"> </td>
    </tr> 
    <tr>
    <td><label for="email">EMAIL:</label></td>
    <td><input type="email" id="email" name="email"> </td>
    </tr> 
     <tr>
    <td><label for="pass">PASSWORD:</label></td>
    <td><input type="text" id="pass" name="password"> </td>
    </tr> 
    <tr>
    <td><label for="repass">RE-PASSWORD:</label></td>
    <td><input type="text" id="repass" name="rpassword" onmouseout="passcheck()"> </td>
    </tr> 
  </table>
  <button onclick="check()">SUBMIT</button>
  </form>
  <script type="text/javascript">
     function passcheck()
     {
    	 const a=document.getElementById("pass").value
    	 const b=document.getElementById("repass").value
    	 if(a!=b)
    		 {
    		  let repass=document.getElementById("repass")
    		  alert("incorrect password")
    		  repass.style.border="3px solid red"
    		 }
    	 else if(a==b)
    		 {
   		      let repass=document.getElementById("repass")
   		      repass.style.border="3px solid green"
    		 }
     }
     function check()
     {
    	 const a=document.getElementById("id").value
    	 const b=document.getElementById("name").value
    	 const c=document.getElementById("contact").value
    	 const d=document.getElementById("email").value
    	 const e=document.getElementById("pass").value
    	 const f=document.getElementById("repass").value
    	 if(a==null || b==null || c==null || d==null || e==null ||f==null)
    		 {
    		 alert("please enter all the fields..")
    		 }
     }
  </script>
</body>
</html>