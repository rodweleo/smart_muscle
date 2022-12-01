<%-- 
    Document   : header
    Created on : Sep 10, 2022, 6:39:45 PM
    Author     : Leo
--%>


<%@page import="com.mycompany.befit.centre.DAO.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
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
        String membershipID = (String) session.getAttribute("membershipID");
  
	MemberDAO dao=new MemberDAO();
        
        ResultSet rs = dao.checkMember(membershipID);
        ResultSet rs1 = dao.viewTasks(membershipID);
        
        while(rs.next())
        {
            
%>
<div id="header">
<div class="profile">Welcome 
        <%=rs.getString(2) %>&nbsp;<%=rs.getString(3) %>
        
    </div>
        
            <a href="<%=request.getContextPath()%>/member-logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
       
        
        
        <%
        }

        %>
        </div>
    </body>
</html>
