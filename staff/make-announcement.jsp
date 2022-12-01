<%-- 
    Document   : make-announcement
    Created on : Sep 25, 2022, 9:13:33 AM
    Author     : Leo
--%>

<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
    </head>
    <body>
        
        <%
            Random rand = new Random();
        String announcementID = "ANMT-"+ rand.nextInt(100);
        
        String announcer = request.getParameter("announcer");
        String announcement = request.getParameter("announcement");
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  
        Date date = new Date();  
        String dateAnnounced=formatter.format(date);
        
        System.out.println(announcer+ " is making an announcement...");
        
        AdminDAO dao = new AdminDAO();
        
        String result = dao.makeAnnouncement(announcementID, announcer, announcement, dateAnnounced);
        
        if(result == "Announcement made successfully!")
        {
            System.out.println(announcer + " just made an announcement.");
            response.sendRedirect("Message.html");

        } 
        else {
            System.out.println(result);
        }
        %>
        
    </body>
</html>
