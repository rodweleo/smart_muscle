<%-- 
    Document   : check-attendance
    Created on : Sep 21, 2022, 10:28:09 AM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
    </head>
    <body>
         <%
                    ResultSet rs2 = dao.checkAttendance(mid, todays_date);
                   
                    String curr_date = rs2.getString(2);
                    String curr_time = rs2.getString(3);
                   
                    
                    if(rs2 !=null)//curr_date == todays_date
                    {
                        
                %>
                
                 <%
                    }else{
                %>
    </body>
</html>
