<%-- 
    Document   : equipment-entry
    Created on : Sep 11, 2022, 12:23:36 PM
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
    text-align: center; 
    padding: 4px;
}

h1{
    color: black;
}
tr{
    text-align: center;
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
        <h1>Equipment Entry Form</h1>   </center>
            <br>
        <form action="<%=request.getContextPath()%>/equipment-entry" method="post">
            <div id="equipment-details" style="display: flex; justify-content: space-between; width: 79%;">
            <table>
                <tr>
                    <th>Equipment Information</th>
                </tr>
                <tr>
                    <td>Equipment: </td>
                    <td><input type="text" id="txt-field" name="equipName" placeholder="Equipment Name"></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea id="txt-field" name="description" rows="2" cols="22" placeholder="Short Description"></textarea></td>
                </tr>
                <tr>
                    <td>Date of Purchase:</td>
                    <td><input type="date" name="dop" id="txt-field" required><br>
                        <small>Please mention the date of purchase</small>
                    </td>
                   
                </tr>
                <tr>
                    <td>Quantity:</td>
                    <td><input type="number" name="quantity" placeholder="Equipment Qty" id="txt-field"></td>
                </tr>
            </table>
        
            <div id="other-details" style="display: block; width: 40%;">
            <table>
                 <tr>
                    <th>Other Details</th>
                </tr>
                <tr>
                    <td>Vendor:</td>
                    <td> <input type="text" id="txt-field" name="vendor" placeholder="Vendor"></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" id="txt-field" name="vendorAddress" placeholder="Vendor Address"></td>
                </tr>
                <tr>
                    <td>Vendor Number:</td>
                    <td><input type="tel" id="txt-field" name="vendorContact"><br>
            <small>0712345678</small></td>
                </tr>
            </table>
            
                <div id="other-details" style="display: block; width: 40%;">
            <table  style="width: 40%;">
                <tr>
                    <th>Pricing</th>
                </tr>
                <tr>
                    <td>Cost per Item</td>
                    <td><input type="number" name="costPerEquipment" placeholder="123"></td><br>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit Details"></td>
                </tr>
            </table>
                </div>
            </div>
            
        </form>
  
        </div>
            </div>
    </body>
</html>
