<%-- 
    Document   : header
    Created on : Sep 10, 2022, 6:39:45 PM
    Author     : Leo
--%>

<%@page import="com.mycompany.befit.centre.DAO.AdminDAO"%>

<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <link rel="stylesheet" href="header.css"/>
        <style>
            body{
    font-family: 'Roboto', sans-serif;
    color: white;
}
#header{
    left: 18%;
    background-color: #042331;
    top: 0;
    display: flex;
    text-align: center;
    width: 82%;
    height: 66px;
    position: fixed;
    justify-content: space-between;
    border-left: 1px solid rgba(255,255,255,0.1);
}

.profile{
    left: 0;
    padding: 22px;
}

#header a{
    right: 0;
    padding: 22px;
    color: white;
}

        </style>
    </head>
    <body>
        <%
        String admin = (String) session.getAttribute("admin");
  
	AdminDAO dao=new AdminDAO();
        
        ResultSet rs = dao.checkAdmin(admin);
        
        
        while(rs.next())
        {
            
%>

<div id="header">
<div class="profile">Welcome 
        <%=rs.getString(2) %>
        
    </div>
        
            <a href="<%=request.getContextPath()%>/admin-logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
       
        
        
        <%
        }

        %>
        </div>
    </body>
</html>
