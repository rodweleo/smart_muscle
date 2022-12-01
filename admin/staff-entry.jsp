<%-- 
    Document   : staff-entry
    Created on : Sep 14, 2022, 11:34:49 AM
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
            table, th {
  border: 1px solid grey;
  border-collapse: collapse;
  
}
th{
    color: black;
    padding: 5px;
    
}
td{
    color: grey;
    font-weight:bold;
    
    padding: 4px;
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
             ">
    <center>
        <h1>GYM's Staff Entry Form</h1></center>
        <form action="<%=request.getContextPath()%>/add-staff" method="post">
           
            <table>
                <tr>
                    <td>Staff's Full name</td>
                    <td><input type="text" id="txt-field" name="fullname"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" id="txt-field" name="username" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" id="txt-field" name="password" required></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" id="txt-field" name="cnfm-password"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><select id="txt-field" name="gender" required>
                            <option value="" selected >Select gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                            
                        </select></td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td><input type="email" id="txt-field" name="email"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="tel" id="txt-field" name="contact"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" id="txt-field" name="address"></td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td><select id="txt-field" name="designation" required>
                            <option value="" selected>Select designation</option>
                            <option value="cashier">Cashier</option>
                            <option value="trainer">Trainer</option>
                            <option value="gym assistant">Gym Assistant</option>
                            <option value="front desk staff">Front Desk Staff</option>
                            <option value="manager">Manager</option>
                        </select>
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Save Staff Details"> <input type="reset" value="Cancel">
            
        </form>
        
    
        
    </body>
</html>
