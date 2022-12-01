<%-- 
    Document   : tasks
    Created on : Sep 15, 2022, 6:40:00 PM
    Author     : Leo
--%>
<%@page import="com.mycompany.befit.centre.DAO.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="includes/sidebar/sidebar.jsp" %>
<%@include file="includes/header/header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Center</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="member/includes/sidebar/sidebar.css"/>
        <link rel="stylesheet" href="member/includes/header/header.css"/>
    </head>
    <body>
        
        
        <table cellspacing="5px" cellpadding="5px">
            <tr>
                <th>Task Number</th>
                <th>Description</th>
                <th>To-Be-Done-On</th>
                <th>Completed on</th>
                <th>Status</th>
            </tr>
            <%
        
        while(rs1.next())
        {
        %>
            <tr>
                <td><%=rs1.getString(1)%></td>
                <td><%=rs1.getString(2)%></td>
                <td><%=rs1.getString(3)%></td>
                <td><%=rs1.getString(4)%></td>
                <td></td>
            </tr>
        </table>
                
                <%
                    }
                %>
    </body>
</html>
