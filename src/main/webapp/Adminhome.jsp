<%@page import="com.qsp.DAO.Student_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qsp.DTO.Student_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        
        body {
            
            justify-content: center;
            align-items: center;
            height: 97vh;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            font-family: 'Poppins', sans-serif;
            color: white;
            text-align: center;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            text-shadow: 2px 2px 4px aqua;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            color: black;
            overflow: hidden;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #2575fc;
            color: white;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        tr:hover {
            background: #d6e0ff;
            transition: 0.3s ease-in-out;
        }

        a {
            text-decoration: none;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            transition: 0.3s;
        }

        .edit {
            background: orange;
        }

        .edit:hover {
            background: #ff8700;
        }

        .delete {
            background: red;
        }

        .delete:hover {
            background: #cc0000;
        }

        .add {
            background: green;
            margin-right: 10px;
        }

        .add:hover {
            background: #218838;
        }

        .logout {
            background: red;
        }

        .logout:hover {
            background: #c82333;
        }

        /* Button Container */
        .button-container {
            margin-top: 20px;
        }
        #edit-icon,#del-icon
        {
        margin-left: 15px;
        }
    </style>
    <script src="https://kit.fontawesome.com/4968d8dd70.js" crossorigin="anonymous"></script>
</head>

<body>
    <h1>Student Details List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>PHYSICS</th>
                <th>CHEMISTRY</th>
                <th>MATHS</th>
                <th>EDIT</th>
                <th>DELETE</th>
            </tr>
        </thead>
        <tbody>
            <% ArrayList<Student_DTO> al=Student_DAO.FindAllStudent(); %>
            <% if(al != null) { %>
                <% for(Student_DTO se: al) { %>
                    <tr>
                        <td><%= se.getId() %></td>
                        <td><%= se.getName() %></td>
                        <td><%= se.getPhysics() %></td>
                        <td><%= se.getChemistry() %></td>
                        <td><%= se.getMaths() %></td>
                        <td><a href="#" class="edit" onclick="Edit(<%= se.getId() %>)">Edit </a><i id="edit-icon" class="fa-solid fa-user-pen"></i></td>
                        <td><a href="#" class="delete" onclick="Delete(<%= se.getId() %>)">Delete</a><i id="del-icon" class="fa-solid fa-trash"></i></td>
                    </tr>
                <% } %>
            <% } %>
        </tbody>
    </table>

    <div class="button-container">
        <a href="Addstudent.jsp" class="add">ADD STUDENT</a>
        <a href="index.jsp" class="logout">LOGOUT</a>
    </div>

    <script>
        function Delete(id) {
            let a = confirm("Are you sure you want to delete this record?");
            if (a) {
                window.location.href = "deleteservlet?id=" + id;
            }
        }

        function Edit(id) {
            let a = confirm("Are you sure you want to edit this record?");
            if (a) {
                window.location.href = "editservlet?id=" + id;
            }
        }
    </script>
</body>
</html>
