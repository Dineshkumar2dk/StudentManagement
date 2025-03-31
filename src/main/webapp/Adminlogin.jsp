<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
       
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 97vh;
            text-align: center;
        }

       
        .login-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            animation: fadeIn 1s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h1 {
            font-size: 24px;
            color: #fff;
            margin-bottom: 20px;
        }

        
        .input-group {
            margin-bottom: 15px;
            text-align: left;
            
        }

        label {
            color: #fff;
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 93%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            background: rgba(255, 255, 255, 0.2);
            color: white;
            font-size: 14px;
            outline: none;
            transition: all 0.3s ease-in-out;
        }

        
        input:focus {
            border: 1px solid #fff;
            background: rgba(255, 255, 255, 0.3);
        }

      
        .btn {
            width: 100%;
            background: #007BFF;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
            transition: all 0.3s ease-in-out;
        }

        .btn:hover {
            background: #0056b3;
            transform: scale(1.05);
        }

        
        p {
            margin-top: 15px;
            font-size: 14px;
            color: white;
        }

        a {
            text-decoration: none;
            color: #00d9ff;
            font-weight: bold;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            color: #ffdd57;
            text-decoration: underline;
        }

        
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
            animation: fadeIn 0.5s ease-in-out;
        }

        
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        #eye-icon
        {
        position: absolute;
        margin-top:9px;
        margin-left: -30px;
        }
        #eye-icon:hover
        {
        color:red;
        }
        
    </style>
    <script src="https://kit.fontawesome.com/4968d8dd70.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="login-container">
        <h1>ADMIN LOGIN</h1>
        <form action="adminlogin" method="post">
            <div class="input-group">
                <label for="email">EMAIL:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="pass">PASSWORD:</label>
                <input type="password" id="pass" name="password" required><i id="eye-icon"class="fa-solid fa-eye" onmouseleave="icon2()" onmouseover="icon()"></i>
            </div>
            <button type="submit" class="btn">LOGIN</button>
            <p>Not a user? <a href="Adminsignup.jsp">Sign Up</a></p>
        </form>

        <% String message = request.getParameter("message"); 
        if ("fail".equals(message)) { %>
            <p class="error-message">⚠ Invalid email or password</p>
        <% } %>
    </div>
  <script type="text/javascript">
  function icon() {
	    let id=document.getElementById("pass")
	    id.type="text"
     }
  function icon2() {
	    let id=document.getElementById("pass")
	    id.type="password"
   }
  </script>
</body>
</html>
