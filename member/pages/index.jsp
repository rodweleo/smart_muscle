

<%@page import="com.mycompany.befit.centre.DAO.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="includes/header/header.jsp" %>
<%@include file="includes/sidebar/sidebar.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="member/includes/header/header.css"/>
        <link rel="stylesheet" href="member/includes/sidebar/sidebar.css"/>
        
    </head>
    <body>
       <% 
//In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("membershipID")== null) )
{
%>
<jsp:forward page="member/login.jsp"></jsp:forward>
<%
} 
%>
    </body>
</html>
