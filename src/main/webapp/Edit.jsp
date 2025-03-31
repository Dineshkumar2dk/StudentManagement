<%@page import="com.qsp.DTO.Student_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student Details</title>
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
            background: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 350px;
            text-align: left;
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
            text-shadow: 0px 0px 8px 8px lightblue;
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
            background: #ff9800;
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
            background: #e68900;
        }
    </style>
</head>
<body>

    <div class="container">
        <% Student_DTO st = (Student_DTO) request.getAttribute("student"); %>

        <h2>UPDATE STUDENT DETAILS</h2>
        
        <form action="updatestudent" method="get">
            <table>
                <tr>
                    <td><label for="id">ID:</label></td>
                    <td><input type="number" id="id" name="id" value="<%=st.getId() %>" readonly></td>
                </tr>
                <tr>
                    <td><label for="name">NAME:</label></td>
                    <td><input type="text" id="name" name="name" value="<%=st.getName() %>"></td>
                </tr>
                <tr>
                    <td><label for="physics">PHYSICS MARK:</label></td>
                    <td><input type="number" id="physics" name="phy" value="<%=st.getPhysics()%>"></td>
                </tr>
                <tr>
                    <td><label for="chemistry">CHEMISTRY MARK:</label></td>
                    <td><input type="number" id="chemistry" name="che" value="<%=st.getChemistry()%>"></td>
                </tr>
                <tr>
                    <td><label for="maths">MATHS MARK:</label></td>
                    <td><input type="number" id="maths" name="mat" value="<%=st.getMaths()%>"></td>
                </tr>
            </table>
            <button type="submit">SUBMIT</button>
        </form>
    </div>

</body>
</html>
