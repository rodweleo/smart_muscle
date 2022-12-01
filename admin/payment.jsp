<%-- 
    Document   : payment
    Created on : Sep 11, 2022, 11:13:27 AM
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
   
}
td{
    color: grey;
    font-weight:bold;
    
    width: auto;
    padding: 8px;
}

h1{
    color: black;
}

.container{
    width:30%;
    min-height: 20px;
    display:flex;
    align-items: center;
   
}

.search-bar{
    width:100%;
    max-width:700px;
    background:#cccccc;
    display:flex;
    align-items: center;
    border-radius: 80px;
    padding: 7px 5px;
    backdrop-filter:blur(4px) saturate(180%);
    
}

.search-bar input{
    background: transparent;
    flex: 1;
    border: 0;
    outline: none;
    padding: 7px 5px;
    font-size: 16px;
    color:black;
}
::placeholder{
    color:black;
}

.search-bar button i{
    width: 15px;
}

.search-bar button{
    border: 0;
    border-radius: 50%;
    width:30px;
    height: 30px;
    background: #58629b;
    cursor: pointer;
}


        </style>
    </head>
    <body>
        
        <div id="display-board" style="
             position: relative; 
             color: grey;
             
             left: 18.5%;
             width: 81.5%;
             font-size: 17px;
             top: 70px;
             ">
        <center>
        <h1>Registered Member's Payment</h1>   </center>
            <br>
            
            <div style="display:flex; justify-content: space-between; width: 99%">
                <h2 style="color:black;">Member's Payment Table</h2>
           <div class="container">
                                <form action="search-result.jsp" class="search-bar">
                                    <input type="text" placeholder="Search member..."
                                           name="query">
                                    <button type="submit"><i class="fas fa-search"></i></button>

                                </form>
                </div>
            </div>
            <br>
        <table style="width:99%;">         
            <tr style="width:100%; text-align: center;">
                <th>ID</th>
                <th>Member Name</th>
                <th>Last Payment Date</th>
                <th>Amount</th>
                <th>Service</th>
                <th>Plan</th>
                <th>Action</th>
                <th>Remind</th>
                
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
	
	
	<td><%=rs1.getString(12) %></td>
	<td><%=rs1.getString(11) %></td>
	<td><%=rs1.getString(8) %></td>
        <td>
            <a href="user-payment.jsp?mid=<%=rs1.getString(1)%>"
               style="padding:5px; color: white; background: green;"
               ><i class="fas fa-dollar-sign"></i> Make Payment</a>
        </td>
	<td>
            <a href="send-reminder.jsp?mid=<%=rs1.getString(1)%>"
                style="padding:5px; color: white; background: red;"
               ><i class="fas fa-exclamation"></i> Alert</a>
        </td>
	
	
        
	
<%
}
%>
        </table>
        </div>
        
    </body>
</html>
