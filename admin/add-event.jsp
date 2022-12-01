<%-- 
    Document   : add-event
    Created on : Oct 2, 2022, 8:51:54 AM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <style>
            .actions{
                margin-top: 20px;
            }
            .actions .btn{
                width:200px;
                padding: 7px;
            }
            .actions .btn:hover{
                cursor:pointer;
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Add Event</h1>
        <div class ="booking-details" style="display:flex; justify-content:space-between; width: 50%;">
            <div class="book-for">
                <strong>Booking for:</strong> <span>Group Fitness Room</span>
            </div>
            <div class="date">
                <strong>Date:</strong> <span>05-09-2022</span>
            </div>
            <div class="time">
                <strong>Time:</strong> <span>09:00:00</span>
            </div>
        </div>
        
        <div class="actions" style="display:grid; grid-template-columns: repeat(3, 1fr); gap:10px; width: 50%;">
            <a href=""><button class = "btn">Add Booking</button></a>
            <a href=""><button class = "btn">Add Meeting</button></a>
            <a href="../admin/add-class.jsp"><button class = "btn">Add Class</button></a>
            <a href=""><button class = "btn">Back to Calendar</button></a>
            <a href=""><button class = "btn">Make Time Available</button></a>
            <a href=""><button class = "btn">Make Time Unavailable</button></a>
        </div>
    </center>
    </body>
</html>
