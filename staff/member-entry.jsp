<%-- 
    Document   : addMember
    Created on : Sep 9, 2022, 1:31:38 PM
    Author     : Leo
--%>
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
        
        <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
      integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
      crossorigin="anonymous"
    />
        <script>
            function generatePassword(length){
                        const characters = "abcdefghijklmnopqrstuvwxyz!@#$%^&*()_+<>ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
                        var pass = "";
                        for(var x = 0; x<length;x++){
                            var i = Math.floor(Math.random() * characters.length);
                            pass+=characters.charAt(i);
                        }
                        
                        password.value=pass;
                    }
            function validatePassword(password) {
                
                // Do not show anything when the length of password is zero.
                if (password.length === 0) {
                    document.getElementById("msg").innerHTML = "";
                    return;
                }
                // Create an array and push all possible values that you want in password
                var matchedCase = new Array();
                matchedCase.push("[$@$!%*#?&]"); // Special Charector
                matchedCase.push("[A-Z]");      // Uppercase Alpabates
                matchedCase.push("[0-9]");      // Numbers
                matchedCase.push("[a-z]");     // Lowercase Alphabates

                // Check the conditions
                var ctr = 0;
                for (var i = 0; i < matchedCase.length; i++) {
                    if (new RegExp(matchedCase[i]).test(password)) {
                        ctr++;
                    }
                }
                // Display it
                var color = "";
                var strength = "";
                switch (ctr) {
                    case 0:
                    case 1:
                    case 2:
                        strength = "Very Weak";
                        color = "red";
                        break;
                    case 3:
                        strength = "Medium";
                        color = "orange";
                        break;
                    case 4:
                        strength = "Strong";
                        color = "green";
                        break;
                }
                document.getElementById("msg").innerHTML = strength;
                document.getElementById("msg").style.color = color;
            }
            
            function togglePasswordVisibility()
                            {
                                var password = document.getElementById("password") ;
                                if(password.type==="password")
                                {
                                    password.type ="text";
                                } else{
                                    password.type="password";
                                }
                            }
        </script>
        
    </head>
    <body>
          <% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("admin")== null) )
{
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
    } 
%>
        
        <form action="<%=request.getContextPath()%>/register-member" method="post">
            <h1><i class="fa fa-user-plus" aria-hidden="true"></i>New Member</h1>
            <input type="text" id="fname" name="fname">
            <input type="text" id="lname" name="lname">
            <input type="text" id="username" name="username">
            
            <div id="member-password">
            <input type="password" id="password" name="password" onkeyup="validatePassword(this.value)">
            <span id="msg"></span>
                <input type="button" class="button" value="Generate" onclick="generatePassword(12);validatePassword(password.value)" tabindex="2">
                <input type="checkbox" onclick="togglePasswordVisibility()">Show Password
                
            </div>
            
            <select id="gender" name="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
            <!--<input type="date" id="dor" name="date">-->
            <select id="plan" name="plan">
                <option value="day pass">Day Pass</option>
                        <option value="Weekly Pass">Weekly Pass</option>
                        <option value="Monthly">Monthly</option>
                        <option value="3-months">3-Month</option>
                        <option value="6-months">6-Months</option>
                        <option value="12-months">12-Months</option>
            </select>
            
            
            <label for="phone">Contact Number:</label>

                <input type="tel" id="phone" name="contact"
                       pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
                       required>

                <small>Format: 0712-345-678</small>
            

            <input type="text" id="address" name="address">
            
            <select id="service" name="service">
                <option value="Fitness">Fitness - $55 per month</option>
                <option value="Sauna">Sauna - $35 per month</option>
                <option value="Cardio">Cardio - $40 per month</option>
            </select>
            
            <input type="number" id="totalAmount" name="totalAmount">
            
            <input type="submit" value="Submit Member Details"><input type="reset" value="Cancel">
            
        </form>
        
            
            
    </body>
</html>
