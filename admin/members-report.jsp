<%-- 
    Document   : members-report
    Created on : Sep 25, 2022, 12:38:29 PM
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
        <h1>View Reports </h1></center><br> 
        <table style="width:99%;">
            
            <tr style="width:100px; ">
                <th>ID</th>
                <th>Full name</th>
                <th>Service</th>
                <th>Action</th>
            </tr>
            <%
               ResultSet rs1 =dao.viewAllMembers();
                
                while(rs1.next())
                {
            %>
            
            <tr style="text-align: center;">
                <td><%=rs1.getString(1)%></td>
                <td><%=rs1.getString(2)%> <%=rs1.getString(3)%></td>
                <td><%=rs1.getString(11)%></td>
                
                <td>
                    <a href="view-member-report.jsp?mid=<%=rs1.getString(1)%>" style="text-decoration: none; 
                        padding: 5px; border-radius: 5px; width: 100%; color:graytext;">
                        <i class="fas fa-file"></i> View Report</a>
                
                </td>
            </tr>
            <%
                }
            %>
        </table>
         </div>
   
        
    </body>
</html>
