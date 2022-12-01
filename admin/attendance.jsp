<%-- 
    Document   : attendance
    Created on : Sep 11, 2022, 1:31:10 PM
    Author     : Leo
--%>


<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
    width: auto;
    
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
            <center><h1>Attendance List</h1></center><br>
        <table style="width:99%;">
            
            
            <tr style="width:100px;">
                <th>#</th>
                <th>Full name</th>
                <th>Contact Number</th>
                <th>Service</th>
                <th>Action</th>
                
                
            </tr>
            
            <%
ResultSet rs1=dao.viewActiveMembers();
        
                  
                  
                  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                  DateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
                  Date date = new Date();
                  
                  //get the current date
                  String today_date = dateFormat.format(date);
                  System.out.println(today_date);
                  
                  //get the current time
                  String today_time = timeFormat.format(date);
                  System.out.println(today_time);
                   
                  //check if the active member has already checked in
                  
                  
while(rs1.next())
{            

%>

	<tr style="text-align: center;">
            
        <td><%=rs1.getString(1) %> </td>
	<td><%=rs1.getString(2) %> <%=rs1.getString(3) %></td>
        <td><%=rs1.getString(9)%></td>
        <td><%=rs1.getString(11) %></td>
     
             <td>
                <span></span>
                <a href="delete-attendance.jsp?mid=<%=rs1.getString(1) %>" ><button style="padding:3px; width: 100px; 
                                                                                  ">Check Out 
                        <i class="fas fa-door-open"></i></button> </a>
             </td>            
               
            
            <td>
            <a href="check-attendance.jsp?mid=<%=rs1.getString(1) %>"><button style="padding:3px; width: 100px;
                                                                               ">Check In 
                        <i class='fas fa-map-marker-alt'></i></button> </a> 
              </td>
           
                <%
               }
         
            %>
               
          
           
                
                
         
            
                
                
           
            
    
            
            
        </tr>


        </table>
    </div>
    
    </body>
</html>
