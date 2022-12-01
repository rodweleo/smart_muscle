<%-- 
    Document   : manage-announcement
    Created on : Sep 14, 2022, 9:27:02 AM
    Author     : Leo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>
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
    width: auto;
    padding: 5px;
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
        <h1>Manage Announcements</h1>
        </center><br>
        <table style="width:100%;">
            
            
            <tr style="width:100px;">
                <th>#</th>
                <th>Date Announced</th>
                <th>Message</th>
                <th>The Announcer</th>
                <th>Manage</th>
                
                
            </tr>
            <%
ResultSet rs1=dao.viewAllAnnouncements();
while(rs1.next())
{
%>
<tr style="text-align: center;">
	<td><%=rs1.getString(1) %></td>
	<td><%=rs1.getString(4) %></td>
	<td><%=rs1.getString(3) %></td>
	<td><%=rs1.getString(2) %></td>
        <td><a href="delete-announcement.jsp?aid=<%=rs1.getString(1)%>" style="text-decoration: none;">
                <i class="fas fa-trash"></i> Remove</a></td>
	
<%
}
%>
        </table>
 </div>
    </body>
</html>
