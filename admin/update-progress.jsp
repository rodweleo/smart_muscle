<%-- 
    Document   : update-progress
    Created on : Sep 11, 2022, 6:59:10 PM
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
            table, th,tr,td {
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
    
    padding: 4px;
}

h1{
    color: black;
}
input[type='text']{
    border: none;
}

input[type='submit']:hover{
    cursor: pointer;
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
        String membershipID=request.getParameter("mid");
        request.setAttribute("membershipID", membershipID);
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
            <form action="user-progress-req.jsp" method="post">
                <h1>Update Customer's Progress</h1>
                <table style="width:60%">
                    
                      <%
        ResultSet rs1=dao.viewMemberByMembershipId(membershipID);
        while(rs1.next())
        {
%>
            <tr>
                <td>Membership ID</td>
                <td><input type="text" id="id" name="membershipID" value="<%=rs1.getString(1)%>"></td>
            </tr>
            <tr>
                <td>Member's Full name: </td>
                <td><input type="text" name="fullname" value="<%=rs1.getString(2) %> <%=rs1.getString(3) %>" readonly></td>
            </tr>
            <tr>
                <td>Service Taken</td>
                <td><input type="text" name="service" value="<%=rs1.getString(11)%>" readonly></td>
            </tr>
            <tr>
                <td>Initial Weight (KG)</td>
                <td><input type="text" name="initialWeight" value="<%=rs1.getInt(15) %>" readonly></td>
            </tr>
            <tr>
                <td>Current Weight (KG)</td>
                <td><input type="number" name="currentWeight"></td>
            </tr>
            <tr>
                <td>Initial Body Type</td>
                <td><input type="text" name="initialBodyType" value="<%=rs1.getString(17) %>"></td>
            </tr>
          

	<tr>
        <td>Current Body Type</td>
        
        <td>
            <select id="id" name="currentBodyType">
                <option value="none" selected disabled hidden>Select body type</option>
                <option value="slim">Slim</option>
                <option value="muscular">Muscular</option>
                <option value="fit">Fit</option>
                
            </select>
        </td>
        
        </tr>

<%
}
%>
        </table>
        <br>
        <input type="submit" value="Save Changes" style="padding: 7px; color: white; background: blue; border: none;">
        </form>
            </center>
        </div>
    </body>
</html>
