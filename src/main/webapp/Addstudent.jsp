<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
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
            background: rgba(255, 255, 255, 0.2);
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            text-align: left;
            width: 350px;
        }

        h2 {
            margin-bottom: 10px;
            text-align: center;
        }

        table {
            width: 100%;
        }

        label {
            font-size: 16px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

        input:focus {
            outline: none;
            box-shadow: 0px 0px 8px rgba(255, 255, 255, 0.5);
        }

        button {
            background: #FFA500;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
            margin-left: 120px;
           
        }

        button:hover {
            background: #FF8C00;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>ADD STUDENT</h2>
        <form action="addstudent" method="get">
            <table>
                <tr>
                    <td><label for="id">ID:</label></td>
                    <td><input type="number" id="id" name="id" required></td>
                </tr>
                <tr>
                    <td><label for="name">NAME:</label></td>
                    <td><input type="text" id="name" name="name" required></td>
                </tr>
                <tr>
                    <td><label for="physics">PHYSICS MARK:</label></td>
                    <td><input type="number" id="physics" name="phy" required></td>
                </tr>
                <tr>
                    <td><label for="chemistry">CHEMISTRY MARK:</label></td>
                    <td><input type="number" id="chemistry" name="che" required></td>
                </tr>
                <tr>
                    <td><label for="maths">MATHS MARK:</label></td>
                    <td><input type="number" id="maths" name="mat" required></td>
                </tr>
            </table>
            <button type="submit">SUBMIT</button>
        </form>
    </div>

</body>
</html>
