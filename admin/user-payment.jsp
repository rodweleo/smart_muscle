<%-- 
    Document   : user-paymenr
    Created on : Sep 11, 2022, 9:25:53 PM
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
        <title>BEFIT Center</title>
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
    padding: 5px;
}
tr{
    width:auto;
}
h1{
    color: black;
}

input[type='submit']{
    padding:7px;
    background:green;
    border:none;
    color:white;
    padding:7px;
}

input[type='submit']:hover{
    cursor: pointer;
}
        </style>
        
    </head>
   
    <body>
       
        <div id="display-board" style="
             position: relative; 
             color: grey;
             
             left: 18.5%;
             width: 77.5%;
             font-size: 17px;
             top: 70px;
             "><center>
        <h1>Payment Form</h1> 
    <form action="#" method="post">
        <table style="width:60%;">
         <%
String membershipID= request.getParameter("mid");
ResultSet rs1=dao.viewMemberByMembershipId(membershipID);
while(rs1.next())
{
%>    
            
            <tr>
                 <td>Membership ID</td>
                 <td><%=rs1.getString(1) %></td>
            </tr>
            <tr>
                <td>Member's Full name</td>
            <td><%=rs1.getString(2) %> <%=rs1.getString(3) %></td>
            </tr>
            <tr>
                <td>Service</td>
                <td><%=rs1.getString(11) %></td>
            </tr>
            <tr>
                  <td>Amount Per Month</td>
                  	
            <td><%=rs1.getString(12) %></td>
            </tr>
            <tr>
                  <td>Plan</td>
                <td><%=rs1.getString(8) %></td>
            </tr>
            <tr>
                <td>Member's Status</td>
                <td><%=rs1.getString(13) %></td>
            </tr>
           
<tr style="text-align: center;">
        
	
<%
}
%>
        </table>
        <br>
        <input type="submit" value="Make Payment">
       </form>
        </center>
    </body>
</html>
