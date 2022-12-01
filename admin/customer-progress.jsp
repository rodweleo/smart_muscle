<%-- 
    Document   : customer-progress
    Created on : Sep 11, 2022, 6:52:41 PM
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
        <link rel="stylesheet" href="customer-progress.css"/>
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
    width: auto;
    padding: 5px;
}

h1{
    color: black;
}
        </style>
    </head>
    <body>
       <div id="display-board" style="
             position: relative; 
             color: grey;
             overflow-y:scroll;
             left: 18.5%;
             width: 81.5%;
             font-size: 17px;
             top: 70px;
             ">
        <center>
         <h1>Update Customer's Progress</h1>
        <br>
        <table style="width:100%">
            
            
            <tr style="width:100px;">
           
                <th>#</th>
                <th>Full name</th>
                <th>Chosen Service</th>
                <th>Plan</th>
                <th>Action</th>
                
            </tr>
            <%


ResultSet rs1=dao.viewAllMembers();

while(rs1.next())
{
%>

	<tr style="text-align: center;">
            
        <td><%=rs1.getString(1) %></td>
	<td><%=rs1.getString(2) %> <%=rs1.getString(3) %></td>
        <td><%=rs1.getString(11)%></td>
        <td><%=rs1.getString(8) %></td>
        <td><a href="update-progress.jsp?mid=<%=rs1.getString(1) %>">Update Progress</a></td>
	

<%
}
%>
        </table>
      
            </center>
       </div>
    </body>
</html>
