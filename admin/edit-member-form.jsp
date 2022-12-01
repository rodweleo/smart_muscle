<%-- 
    Document   : edit-member-fomr
    Created on : Sep 11, 2022, 12:06:55 PM
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
            String membershipID = request.getParameter("mid");
            ResultSet rs1=dao.viewMemberByMembershipId(membershipID);
            while(rs1.next())
            {

        %>
        
        <h1>Update Member Details</h1>
        <form action="<%=request.getContextPath()%>/update-member" method="post">
            <h1><i class="fa fa-user-plus" aria-hidden="true"></i>New Member</h1>
            <input type="text" id="fname" name="fname" value="<%=rs1.getString(2)%>">
            <input type="text" id="lname" name="lname" value="<%=rs1.getString(3)%>">
            <input type="text" id="username" name="username" value="<%=rs1.getString(4)%>" readonly>
            <input type="password" id="password" name="password" value="<%=rs1.getString(5)%>" readonly>
            <select id="gender" name="gender">
                <option value="value" selected><%=rs1.getString(6)%></option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
                <input type="text" id="dor" name="date" value="<%=rs1.getString(7)%>" readonly>
            <select id="plan" name="plan">
                <option value="value" selected><%=rs1.getString(8)%></option>
                <option value="day pass">Day Pass</option>
                
                        <option value="Weekly Pass">Weekly Pass</option>
                        <option value="Monthly">Monthly</option>
                        <option value="3-months">3-Month</option>
                        <option value="6-months">6-Months</option>
                        <option value="12-months">12-Months</option>
            </select>
            
            
            <label for="phone">Contact Number:</label>

                <input type="tel" id="phone" name="contact"
                        value="<%=rs1.getString(9)%>"
                       required>

                <small>Format: 0712345678</small>
            

            <input type="text" id="address" name="address" value="<%=rs1.getString(10)%>">
            
            <select id="service" name="service">
                <option value="value" selected><%=rs1.getString(11)%></option>
                <option value="Fitness">Fitness - $55 per month</option>
                <option value="Sauna">Sauna - $35 per month</option>
                <option value="Cardio">Cardio - $40 per month</option>
            </select>
            <%
                }
            %>
            <input type="number" id="totalAmount" name="totalAmount">
            
            <input type="submit" value="Update Member Details"><input type="reset" value="Cancel">
            
        </form>
    </body>
</html>
