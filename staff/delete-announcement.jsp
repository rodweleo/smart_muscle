<%-- 
    Document   : delete-notice
    Created on : Sep 14, 2022, 9:51:44 AM
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
        <%
            String announcementID = request.getParameter("aid");
            
            AdminDAO dao  =new AdminDAO();
            String message = dao.deleteAnnouncement(announcementID);
            if(message.equals("Announcement deleted successfully!"));
            {
                response.sendRedirect("message.html");
            }
        %>
    </body>
</html>
