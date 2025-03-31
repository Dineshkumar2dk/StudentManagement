<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
    <style>
        
        body {
             display: flex;
            justify-content: center;
            align-items: center;
            height: 97vh;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            font-family: 'Poppins', sans-serif;
            text-align: center;
        }

         h2 {
            font-size: 24px;
            color: #fff;
            margin-bottom: 20px;
        }

        
        form {
             background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            animation: fadeIn 1s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        
        table {
            width: 100%;
            margin: 10px 0;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }
          label {
            color: #fff;
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
            text-align: left;
        }
        
        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        
        #repass {
            border: 1px solid #ccc;
        }

        
        button {
            width: 100%;
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 10px;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        
        .error {
            border: 3px solid red ;
            
        }

        .success {
            border: 3px solid green ;
        }
    </style>

<body>
<form action="adminsignup" method="get">
<h2>SignUp Page</h2>
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
    	 else
    		 {
    		 let repass=document.getElementById("repass")
  		      repass.style.border="1px solid black"
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