<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="ViewSalary.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Salary Details</title>
    <style>
        .container {
            text-align: center;
            margin-top: 50px;
        }

        .error-message {
            background-color: #ffcccc;
            color: #ff0000;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ff0000;
            border-radius: 5px;
        }

        table {
            width: 50%; /* Adjust the width as needed */
            margin: 20px auto; /* Center the table horizontally */
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: center; /* Center the text in each cell */
            padding: 8px;
        }

        th {
            background-color: #0bb288; /* Set the background color to #0bb288 */
            color: #ffffff; /* Set the text color to white */
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            String id = (String) request.getParameter("userid"); 
            SalaryDAO dao = new SalaryDAO();
            List<Salary> salList = dao.checkSalary(id); 
			
            if (salList != null && !salList.isEmpty()) { 
        %>
        <h3>Your Salary Details</h3>
        <table>
            <tr>
                <th>Date</th>
                <th>Total Appointments</th>
                <th>Your Salary</th>
            </tr>
            
            <% for (Salary s : salList) { %>
                <tr>
                    <td><%= s.getAppointmentDate() %></td>
                    <td><%= s.getPatientCount() %></td>
                    <td><%= s.getTotalSalary() %></td>
                </tr>
            <% } %>
        </table>
        <% } else { %>
            <div class="error-message">
                Sorry, you haven't received any salary for today.
            </div>
        <% } %>
    </div>
</body>
</html>


