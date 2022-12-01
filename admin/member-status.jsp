<%-- 
    Document   : member-status
    Created on : Sep 11, 2022, 8:40:53 PM
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
        
        <script>
            var status = document.getElementById("status");
            
            if(status==="Active")
            {
                document.getElementById("pending-icon").style.display = none;
                document.getElementById("expired-icon").style.display = none;
            } else if(status==="Pending")
            {
                document.getElementById("active-icon").style.display = none;
                document.getElementById("expired-icon").style.display = none;
            } else
            {
                document.getElementById("active-icon").style.display = none;
                document.getElementById("pending-icon").style.display = none;
            }
        </script>
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
             overflow-y:scroll;
             left: 18.5%;
             width: 81.5%;
             font-size: 17px;
             top: 70px;
             ">
        <center>
        <h1>Member's Current Status</h1>
        <br>
        <table style="width:100%">
            
            
            <tr style="width:100px;">
                <th>ID</th>
                <th>Full name</th>
                
                <th>Contact </th>

                <th> Service</th>
                <th>Plan</th>
                <th> Status</th>
                
            </tr>
            <%
ResultSet rs1=dao.viewAllMembers();
while(rs1.next())
{
%>
<tr style="text-align: center;">
    
	<td><%=rs1.getString(1) %></td>
	<td><%=rs1.getString(2) %> <%=rs1.getString(3) %></td>
	<td><%=rs1.getString(9) %></td>
	<td><%=rs1.getString(11) %></td>
	<td><%=rs1.getString(8) %></td>
        <td><span id="status-icon" style="width:100%;height: 2px; padding: 7px;
                    border-radius:50%; background:green; margin-top: 5px;"></span>
    <input type="text" id="status" name="status" value="<%=rs1.getString(13)%>" style="border:none; text-align: center; width: 65px;">
        </td>
	
        
	
<%
}
%>
        </table>
        </center>
        </div>
    </body>
</html>
