<%-- 
    Document   : index
    Created on : Sep 9, 2022, 9:05:21 PM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        
        <style>
            body{
    margin: 0;
    padding: 0;
    font-family: montserrat;
    background: linear-gradient(120deg,#2980b9,#8e44ad);
    height:100vh;
    overflow:hidden;
}

.login-form{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 400px;
    background:white;
    border-radius: 5px;
}

.login-form h1{
    text-align: center;
    padding: 0 0 20px 0;
    border-bottom: 1px solid silver;
}

.login-form form{
    padding: 0 40px;
    box-sizing: border-box;
}

form .txt_field{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
}

.txt_field input{
    width:100%;
    padding:0 5px;
    height:40px;
    font-size:16px;
    border: none;
    background:none;
    outline:none;
    
}

.txt_field label{
    position:absolute;
    top: 50%;
    left:5px;
    color:#adadad;
    transform: translateY(-50%);
    font-size:16px;
    pointer-events: none;
    transition: .5s;
}

.txt_field span::before{
    content:'';
    position: absolute;
    top:40px;
    left:0;
    width: 100%;
    height: 2px;
    background:#2691d9;
}

.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
    top:-5px;
    color: #2691d9;
}

.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
    width: 100%;
}

.pass{
    margin: -5px 0 20px 5px;
    color: #a6a6a6;
    cursor:pointer;
}

.pass:hover{
    text-decoration: underline;
}

input[type="submit"]{
    width: 100%;
    height: 50px;
    border:1px solid;
    background:#2691d9;
    border-radius: 25px;
    font-size: 18px;
    color:#e9f4fb;
    font-weight: 700;
    cursor: pointer;
    outline: none;
}

input[type="submit"]:hover{
    border-color:#2691d9;
    transition:.5s;
}

.signup_link{
    margin: 30px 0;
    text-align: center;
    font-size: 16px;
    color:#666666;
}

.signup_link a{
    color:#2691d9;
    text-decoration: none;
}

.signup_link a:hover{
    text-decoration: underline;
}



            .other-login {
               display: flex;
               justify-content: space-between;
               padding: 5px;
               margin: 20px;
               
            }
            .other-login a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
                <h1>GYM  SYSTEM</h1>
            <form action="<%=request.getContextPath()%>/staff-login" method="post">
                <div class="txt_field">
                    <input type="text" id="username" name="staffUsername" required>
                     <span></span>
                    <label for="id">Username</label>
                   
                </div>
                
                <div class="txt_field">
                    <input type="password" id="password" name="password" required>
                    <span></span>
                    <label for="id">Password</label>
                    
                </div>
                
                <hr>
                <input type="submit" value="Staff Login">
                
                <div class="other-login">
                   
                    <a href="../admin/login.jsp">Admin Login</a>
                    <a href="../member/login.jsp">Member Login</a>
                </div>
               
            </form>
        </div>
    </body>
</html>