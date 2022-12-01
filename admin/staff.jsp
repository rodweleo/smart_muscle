<%-- 
    Document   : staff
    Created on : Sep 14, 2022, 1:42:00 PM
    Author     : Leo
--%>
<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<%@include file="sidebar.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        
        <style>
            table, th, td {
  border: 1px solid grey;
  border-collapse: collapse;
  
}
th{
    color: black;
    padding: 5px;
    text-align: center; 
}
td{
    color: grey;
    font-weight:bold;
    
    padding: 3px;
}

h1{
    color: black;
}
        </style>
    </head>
    <body>
         <% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("admin")== null) )
{
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
    } 
%>
         <div id="display-board" style="
             position: relative; 
             color: grey;
             
             left: 18.5%;
             width: 81.5%;
             font-size: 17px;
             top: 70px;
             "><br> <br>
    <center>
        <h1>BEFIT Centre's Staff List</h1></center><br> 
        <table style="width:99%;">
            <a href="staff-entry.jsp" style=" text-decoration: none; background-color:blue; color:white; 
               padding: 7px; ">Add Staff Members</a>
            <br> <br>
            <tr style="width:100px; ">
                <th>ID</th>
                <th>Full name</th>
                <th>Username</th>
                <th>Gender</th>
                <th>Designation</th>
                <th>Email </th>
                <th>Address</th>
                <th>Contact</th>
                <th>Action</th>
            </tr>
            <%
               ResultSet rs1 =dao.viewAllStaff();
                
                while(rs1.next())
                {
            %>
            
            <tr style="text-align: center;">
                <td><%=rs1.getString(1)%></td>
                <td><%=rs1.getString(2)%></td>
                <td><%=rs1.getString(3)%></td>
                <td><%=rs1.getString(5)%></td>
                <td><%=rs1.getString(9)%></td>
                <td><%=rs1.getString(6)%></td>
                <td><%=rs1.getString(8)%></td>
                <td><%=rs1.getString(7)%></td>
                <td>
                    <a href="edit-staff-form.jsp?sid=<%=rs1.getString(1)%>" style="text-decoration: none; 
                        padding: 5px; border-radius: 5px; width: 100%; color: green;">
                        <i class="fas fa-user-edit"></i> Edit</a> |
                <a href="remove-staff.jsp?sid=<%=rs1.getString(1)%>"  style="text-decoration: none; 
                    padding: 5px; border-radius: 5px; width: 20px; color: red;"><i class="fas fa-trash"></i> Remove </a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
         </div>
    </body>
</html>
