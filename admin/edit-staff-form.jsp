<%-- 
    Document   : edit-staff-form
    Created on : Sep 14, 2022, 2:11:23 PM
    Author     : Leo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
    </head>
    <body>
        <%
            String staffID = request.getParameter("sid");
            AdminDAO dao = new AdminDAO();
            ResultSet rs=dao.viewStaffDetailsByStaffID(staffID);
            while(rs.next())
            {

        %>
        
        <h1>Update Staff Details</h1>
        <form action="<%=request.getContextPath()%>/update-staff" method="post">
            <input type="text" id="txt-field" name="fullname" value="<%=rs.getString(2)%>">
            <input type="text" id="username" name="username" value="<%=rs.getString(3)%>">
            <input type="password" id="password" name="password" value="<%=rs.getString(4)%>" readonly>
            <select id="gender" name="gender">
                <option value="value" selected><%=rs.getString(5)%></option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
                <input type="email" id="txt-field" name="email" value="<%=rs.getString(6)%>">
                <input type="tel" id="txt-field" name="email" value="<%=rs.getString(7)%>">
                <small>Format: 0712345678</small>
                <input type="text" id="txt-field" name="address" value="<%=rs.getString(8)%>">

                <select id="txt-field" name="designation">
                <option value="value" selected><%=rs.getString(9)%></option>
                <option value="cashier">Cashier</option>
                            <option value="trainer">Trainer</option>
                            <option value="gym assistant">Gym Assistant</option>
                            <option value="front desk staff">Front Desk Staff</option>
                            <option value="manager">Manager</option>
            </select>
                
            

            <input type="text" id="txt-field" name="dor" value="<%=rs.getString(10)%>">
            
            
            <%
                }
            %>
            
            <input type="submit" value="Update Staff Details"><input type="reset" value="Cancel">
            
        </form>
    </body>
</html>
