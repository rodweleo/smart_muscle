<%-- 
    Document   : user-progress-req
    Created on : Sep 11, 2022, 7:20:20 PM
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
    </head>
    <body>
        <%
        String membershipID=request.getParameter("membershipID");
        System.out.println(membershipID);
        
        String currentWeight=request.getParameter("currentWeight");
        String currentBodyType=request.getParameter("currentBodyType");
        
        String result = dao.updateMemberProgress(membershipID, currentWeight, currentBodyType);
        out.println(result);
%>
        
    </body>
</html>
