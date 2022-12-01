<%-- 
    Document   : addEquipment
    Created on : Sep 10, 2022, 7:40:09 PM
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
    text-align: center; 
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
            <center><h1>BEFIT Gym's Equipment List</h1></center><br>
        <table style="width:100%;">
            
            
            <tr style="width:100px;">
                <th>ID</th>
                <th>Equipment name</th>
                <th>Description</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Vendor</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Purchased Date</th>
          
                
            </tr>
            <%

ResultSet rs1=dao.viewEquipments();
while(rs1.next())
{
%>
	<tr style="text-align: center;">
	<td><%=rs1.getString(1) %></td>
	<td><%=rs1.getString(2) %></td>
	<td><%=rs1.getString(3) %></td>
	<td><%=rs1.getString(4) %></td>
	<td><%=rs1.getString(5) %></td>
	<td><%=rs1.getString(6) %></td>
	<td><%=rs1.getString(7) %></td>
	<td><%=rs1.getString(8) %></td>
	<td><%=rs1.getString(9) %></td>
        

<%
}
%>
        </table>
        </div>
        
        
    </body>
</html>
