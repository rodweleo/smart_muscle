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
        
               <a href="#"><button class="btn"><i class="fa fa-user" aria-hidden="true"></i> Profile</button></a>
               <a href="#"><button class="btn"><i class="fas fa-tachometer-alt"></i> Dashboard</button></a>
               <a href="#"><button class="btn"><i class="fas fa-tasks"></i> Tasks</button></a>
               <a href="#"><button class="btn"><i class="fas fa-calendar-check"></i> Book a Class</button></a>
               <a href="#"><button class="btn"><i class="fas fa-calendar-day"></i> Class Schedule</button></a>
               <a href="#"><button class="btn"><i class="fas fa-dumbbell"></i> Book a PT Session</button></a>
               <a href="#"><button class="btn"><i class="fas fa-clipboard-list"></i> View Training Schedule</button></a>
               <a href="#"><button class="btn"><i class="fas fa-book-reader"></i> View Workouts</button></a>
               <a href="#"><button class="btn"><i class="fas fa-book-medical"></i> View Measurements</button></a>
               <a href="#"><button class="btn"><i class="fas fa-hand-holding-usd"></i> Outstanding Balance</button></a>
               <a href="../member/shop.jsp"><button class="btn"><i class="fas fa-shopping-cart"></i> Buy Products</button></a>
               <a href="#"><button class="btn"><i class="fas fa-question"></i> Questionnaire</button></a>
        
        </div>
    </body>
        
        
</html>
