<%-- 
    Document   : calendar
    Created on : Oct 2, 2022, 9:50:01 AM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <style>
            table{
                width:100%;
                text-align: center;
                border: 1px solid silver;
            }
           
            th{
                border-bottom: 1px solid silver;
                border-right: 1px solid silver;
            }
            
            td{
                border:  1px solid silver;
               
            }
            
        </style>
    </head>
    <body>
        
        <table>
            <tr>
            <th>Time</th>
            <th>Sunday</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
            <th>Saturday</th>
           
            </tr>
            
        <%
                double rows = 12.5;
                int columns = 5;
                
                int morningStartingHour = 5;
                int morningStartingMinute = 0;
                    
             
                    for(int k = 1; k<=7;k++)
                    {
                       %>
            <tr>
            
                <td style="background: none;">           
                    <%  out.println(morningStartingHour + ":" +  "00 AM"); %><br>
                    
                      </td>
                     <td>Hello</td>  
                    
                    
        </tr>
        <tr>
            <td><%  out.println(morningStartingHour + ":" + "30 AM"); %></td>
            <td>Hello</td>  
        </tr>
        <%
                            morningStartingHour++; 
                        
                    %> 
<%
            }
%>
        

<%
    int afternoonStartingHour = 12;
    
    for(int m = 1; m<=7;m++)
                    {
                       %>

<tr>
    <td style="background: red;">
        <%  out.println(afternoonStartingHour + ":00 PM"); %><br>
                    <%  out.println(afternoonStartingHour + ":30 PM"); %>
    </td>
    <td>Hello</td>
    
    <%
                            afternoonStartingHour++; 
                        
                          
                    %> 
</tr>
        
        <%
            }
%>
        
      
  
        
        </table>
    </body>
</html>
