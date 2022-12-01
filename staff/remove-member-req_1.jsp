<%-- 
    Document   : remove-member-req
    Created on : Sep 20, 2022, 4:39:42 PM
    Author     : Leo
--%>

<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
    </head>
    <body>
        <% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("admin")== null) )
{
%>
<jsp:forward page="admin/login.jsp"></jsp:forward>
<%
    } 
%>
        <%
            String membershipID = request.getParameter("mid");
            AdminDAO dao = new AdminDAO();
            String message = dao.deleteMember(membershipID);
            if(message!=null)
            {
                response.sendRedirect("members.jsp");
                out.println(message);
            }else{
                
                    
                    response.sendRedirect("members.jsp");
                    out.println("Error deleting member.");
                    }
        %>
    </body>
</html>
