

<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<%@include file="sidebar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <style>
            .overall-stats span{
                position: absolute; 
                background:black; 
                padding: 5px; 
                right:-10px; 
                top:-10px; 
                border-radius: 5px;
            }
        </style>
        
         
    </head>
    <body style="background:lightgray;">
        <div id="display-board" style="
             position: relative; 
             color: white;
            
             left: 18.5%;
             width: 81.5%;
             font-size: 17px;
             top: 80px;
             ">

            
            <div class="overall-stats" style="display: flex; justify-content: space-between; text-align: center; 
                 width: 95%; ">
                
                <div class="active-members" style="background: blue; width: 200px; padding: 13px; border-radius: 5px; 
                     position: relative;">
                    <%
                        ResultSet rs2 = dao.countActiveMembers();
                        rs2.next();
                        int noOfActiveMembers = rs2.getInt("noOfActiveMembers");
                        rs2.close();
                    %>
                     <span class="total-number" ><%out.println(noOfActiveMembers);%></span>
                     <i class="fas fa-user-check"></i>
                     <p>Active Members</p>
                </div>
                <div class="registered-members" style="background: #ea5a33; width: 200px; padding: 13px; border-radius: 5px; 
                 position: relative;">
                    <%
                    ResultSet rs1 = dao.countRegisteredMembers();
                    rs1.next();
                    int noOfRegisteredMembers = rs1.getInt("noOfRegisteredMembers");
                    rs1.close();
                %>
                 <span class="total-number"><%out.println(noOfRegisteredMembers);%></span>
                 <i class="fas fa-users"></i>
                 <p>Registered Members</p>
                </div>
                <div class="total-earnings" style="background: seagreen; width: 200px; padding: 13px; border-radius: 5px; 
                 position: relative;">
                <%
                    ResultSet rs3 = dao.calculateTotalEarnings();
                    rs3.next();
                    int totalEarnings = rs3.getInt("totalEarnings");
                    
                    rs3.close();
                %>
                 <!--<span class="total-number"  ></span>-->
                 <i class="fas fa-dollar-sign"></i>
                 <p>Total Earnings: $ <%out.println(totalEarnings);%></p>
                </div>
                <div class="announcements" style="background: #2071c5; width: 200px; padding: 13px; border-radius: 5px; 
                 position: relative;">
                    <%
                    ResultSet rs4 = dao.countAnnouncements();
                    rs4.next();
                    int noOfAnnouncements = rs4.getInt("noOfAnnouncements");
                    rs4.close();
                %>
                 <span class="total-number" ><%out.println(noOfAnnouncements);%></span>
                 <i class="fas fa-bullhorn"></i>
                 <p>Announcements</p>
                </div>
            </div>
        
                 
            <div class="overall-details" style="display: grid; grid-template-columns: repeat(2, 1fr); gap:10px; width: 40%; 
                 margin-left:54.2%; top:100px;position: absolute; text-align: center; padding: 7px;">
                
                <div class="available-equipments" style="background: blue; width: auto; padding: 13px; border-radius: 5px; 
                     position: relative;">
                    <%
                    ResultSet rs5 = dao.countAvailableEquipments();
                    rs5.next();
                    int noOfAvailableEquipments = rs5.getInt("noOfAvailableEquipments");
                    rs5.close();
                %>
                    <i class="fas fa-dumbbell"></i><br>
                     <span class="total-number" style=" font-weight:bolder;"><%out.println(noOfAvailableEquipments);%></span>
                    <p>Available Equipment</p>
                    
                </div>
                
                 <div class="staff-members" style="background: seagreen; width: auto; padding: 13px; border-radius: 5px; 
                     position: relative;">
                     <%
                    ResultSet rs6 = dao.countStaffMembers();
                    rs6.next();
                    int noOfStaffMembers = rs6.getInt("noOfStaffMembers");
                    rs6.close();
                %>
                    <i class="fas fa-user-tie"></i><br>
                    <span class="total-number" style=" font-weight:bolder;"><%out.println(noOfStaffMembers);%></span>
                    <p>Staff Members</p>
                     
                </div>
                
                <div class="active-gym-trainers" style="background: #ea5a33; width: auto; padding: 13px; border-radius: 5px; 
                 position: relative;">
                    <%
                    ResultSet rs7 = dao.countActiveTrainers();
                    rs7.next();
                    int noOfActiveTrainers = rs7.getInt("noOfActiveTrainers");
                    rs7.close();
                %>
                    <i class="fas fa-user-ninja"></i><br>
                    <span class="total-number"><%out.println(noOfActiveTrainers);%></span>
                    <p>Active Gym Trainers</p>
                     
                </div>
                
                <div class="present-members" style="background: #2071c5; width: auto; padding: 13px; border-radius: 5px; 
                 position: relative;">
                    <i class="fas fa-calendar-check"></i><br>
                    <span class="total-number">4</span>
                    <p>Present Members</p>
                     
                </div>      
                <div class="total-expenses" style="background: seagreen; width: auto; padding: 13px; border-radius: 5px; 
                 position: relative;">
                    <%
                    ResultSet rs8 = dao.calculateTotalExpenses();
                    rs8.next();
                    int totalExpenses = rs8.getInt("totalExpenses");
                    
                    rs8.close();
                %>
                <i class="fas fa-file-invoice-dollar"></i><br>
                    <span class="total-number">$ <%out.println(totalExpenses);%></span>
                    <p>Total Expenses</p>
                     
                </div>
                
            </div>

        </div>
    </body>
</html>
