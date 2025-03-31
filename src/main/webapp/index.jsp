<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 97vh;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            font-family: 'Poppins', sans-serif;
            color: white;
            text-align: center;
        }

        .container {
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 30px;
            letter-spacing: 2px;
            animation: slideIn 1s ease-in-out;
        }

        .btn {
            display: inline-block;
            width: 160px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            border-radius: 25px;
            margin: 10px;
            border: 2px solid white;
            background: transparent;
            color: white;
            transition: all 0.3s ease-in-out;
            position: relative;
            overflow: hidden;
        }

        /* Button Hover Effects */
        .btn:hover {
            background: white;
            color: #2a5298;
            transform: scale(1.1);
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.6);
        }

        /* Glowing Animation */
        .btn::before {
            content: "";
            position: absolute;
            width: 200%;
            height: 200%;
            top: -50%;
            left: -50%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.2), transparent);
            transition: opacity 0.3s;
            opacity: 0;
        }

        .btn:hover::before {
            opacity: 1;
        }

        /* Keyframe Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
    </style>
    <script src="https://kit.fontawesome.com/4968d8dd70.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
        <h1>Welcome! Choose Your Role</h1>
        <a class="btn" href="Adminlogin.jsp">ADMIN</a>
        <a class="btn" href="#">STUDENT</a>
    </div>

</body>
</html>