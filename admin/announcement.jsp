<%-- 
    Document   : make-announcement
    Created on : Sep 13, 2022, 1:02:23 PM
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
     
}
td{
    color: black;
    font-weight:bold;
    padding: 7px;
}

h1{
    color: black;
}

        input[type='submit']{
            padding:7px;
            color: white;
            background:#2691d9;
            outline: none;
            border:none;
            margin-top: 70px;
        }
        
        input[type='text']{
            outline: none;
            border:none;
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
        <%
    
        ResultSet rs1 = dao.checkAdmin(admin);
        %>
       
        <div id="display-board"
             style="
             position: relative; 
             color: grey;
             display: block;
             left: 18.5%;
             width: 81.5%;
             font-size: 17px;
             top: 70px;
             "
             >
            <h1>Announcement</h1><br>
            
            
            
            <form action="make-announcement.jsp" method="post">
                <table>
                    <tr>
                        <td><h1><a href="manage-announcement.jsp" style="background:#cc0000; padding: 7px; color:white; 
                                   font-size: 14px;">Manage Your Announcements</a></h1></td>
                        
                    </tr>
                  
                    <tr>
                        
                        <td><h2 style="font-size:13px;">Make Announcement</h2></td>
                    </tr>
                    
                    
                  
                   
                    <tr align='center'>
                   
                        <td>The announcer: 
                            <%
                                while(rs1.next())
                                {
                            %>
                            <input type="text" id="txt-inpt" name="announcer" value="<%=rs1.getString(2)%>" placeholder="The announcer">
                            
                            <%
                                }
                            %>
                        </td>
                    
                    </tr>
                    
                   
                
                <tr>
                    
                    <td><textarea id="txt-msg" name="announcement" rows="10" cols="130" placeholder="Enter your announcement here"></textarea> <br>
                <center><input type="submit" value="Publish Now"></center>
                    </td>
                   
                
              
                </tr>
                
                <br>
                
            
                </table>
                
                </form>
               
        </div>
     
        
    </body>
</html>
