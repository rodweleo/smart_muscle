<%-- 
    Document   : sidebar
    Created on : Sep 9, 2022, 11:40:08 AM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <style>
            *{
    text-decoration: none;
    list-style: none;
    margin:0;
    padding:0;
}

body{
    height: 100vh;
    font-family: 'Roboto', sans-serif;
}
.sidebar{
    position: fixed;
    left: 0;
    width: 18%;
    height: 100%;
    background: #042331;
    font-family: 'Roboto', sans-serif;
    align-items: center;

}

.sidebar h1{
    font-size: 22px;
    color: white;
    text-align: center;
    line-height: 55px;
    background: #063146;
    user-select:none;
    font-family: 'Roboto', sans-serif;
}

.sidebar a i{
    padding-left: 3px;
}
            .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 16px;
  color: #818181;
  display: block;
  border: none;
  background: none;
    line-height: 30px;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
  border-top: 1px solid rgba(255,255,255,0.1);
}

.dropdown-container {
  display: none;
  background-color: #262626;
  padding-left: 2px;
}
.dropdown-container a{
   color:#a6a6a6; 
   display: block;
   line-height: 20px;
   display: block;
    height:100%;
    width: 100%;
    line-height: 28px;
    font-size: 16px;
   
    justify-content: center;
    box-sizing:border-box;
    border-top: 1px solid rgba(255,255,255,0.1);
    
    transition: 0.4s;
    padding: 5px;
    margin-left: 7px;
}
.fa-caret-down {
  float: right;
  padding-right: 8px;
}
.dropdown-btn:hover {
  color: #f1f1f1;
}
.dropdown-container a:hover{
    color:  white;
}
.active {
  background-color: #262626;
  color: white;
  width: 100%;
}
.btn{
    padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 16px;
  color: #818181;
  display: block;
  border: none;
  background: none;
line-height: 30px;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
  border-top: 1px solid rgba(255,255,255,0.1);
  transition: 0.4s;
}
.btn:hover{
    color: white;
}







        </style>
    </head>
    
    <body>
        <div class="sidebar">
            <h1 style="color:white; padding: 5px;">BEFIT Center</h1>
            
               
            <a href="../admin/index.jsp"> <button class="btn"><i class="fas fa-tachometer-alt"></i> Dashboard</button></a>
               
                <button class="dropdown-btn"><i class="fa fa-users" aria-hidden="true"></i> Manage Members &nbsp; 
                    <i class="fa fa-caret-down"></i></button>
                    <div class="dropdown-container">
                        <a href="<%=request.getContextPath()%>/members"><i class="fas fa-arrow-right"></i>List all members</a>
                        <a href="../admin/member-entry.jsp"><i class="fas fa-arrow-right"></i>Enter new member</a>
                        <a href="../admin/remove-member.jsp"><i class="fas fa-arrow-right"></i>Remove member</a>
                        <a href="../admin/edit-member.jsp"><i class="fas fa-arrow-right"></i>Update member Details</a>
                        
                    </div>
                <button class="dropdown-btn"><i class="fas fa-question-circle"></i> Attendance 
                    <i class="fa fa-caret-down"></i></button>
                <div class="dropdown-container">
                        <a href="../admin/attendance.jsp"><i class="fas fa-arrow-right"></i>Check In/Out</a>
                        <a href="../admin/view-attendance.jsp"><i class="fas fa-arrow-right"></i>View Attendance</a>
                        
                        
                    </div>
            
            <a href="../admin/member-status.jsp"><button class="btn"><i class="fas fa-question-circle"></i> Members Status</button></a>
                
                <!--<button class="btn"><i class="fa fa-medkit" aria-hidden="true"></i> Health Status</button>-->
                
                <a href="payment.jsp"><button class="btn"><i class="fas fa-hand-holding-usd"></i> Payments</button></a>
                
                
                <button class="dropdown-btn"><i class="fas fa-dumbbell"></i> Gym Equipments &nbsp; 
                    <i class="fa fa-caret-down"></i></button>
                    <div class="dropdown-container">
                            <a href="../admin/equipment.jsp"><i class="fas fa-arrow-right"></i> List gym equipment</a>
                            <a href="../admin/equipment-entry.jsp"><i class="fas fa-arrow-right"></i> Add equipment</a>
                            <a href="#"><i class="fas fa-arrow-right"></i> Update equipments</a>

                    </div>
                
                <button class="dropdown-btn"><i class="fas fa-briefcase"></i> Manage Staff &nbsp;
                <i class="fa fa-caret-down"></i></button>
                <div class="dropdown-container">
                            <a href="../admin/staff.jsp"><i class="fas fa-arrow-right"></i> View Staff Members</a>
                            <a href="../admin/staff-entry.jsp"><i class="fas fa-arrow-right"></i> Add Staff Member</a>
                    </div>
                
                
                
              
                <a href="../admin/announcement.jsp"><button class="btn"><i class="fas fa-bullhorn"></i> Announcements</button></a>
               
                
                <button class="btn"><i class="fa fa-user" aria-hidden="true"></i> Profile</button>
                <button class="dropdown-btn"><i class="fas fa-file"></i> Reports&nbsp;
                <i class="fa fa-caret-down"></i></button>
                <div class="dropdown-container">
                            <a href="../admin/reports.jsp"><i class="fas fa-arrow-right"></i> Chart Representation</a>
                            <a href="../admin/members-report.jsp"><i class="fas fa-arrow-right"></i> Members Report</a>
                            <a href="../admin/progress-report.jsp"><i class="fas fa-arrow-right"></i> Customer Progress Report</a>
                    </div>
                
                
           
            

   
        </div> 
                <script>
            //* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
        </script>
    </body>
        
        
</html>
