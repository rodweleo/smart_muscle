<%-- 
    Document   : book-session
    Created on : Sep 30, 2022, 10:16:03 AM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <style>
            td{
                width: 200px;
                border-top:1px solid silver;
                line-height: 30px;
                text-align:right;
            }
            
            #txt-field{
                width: 200px;
            }
            
        </style>
        
        <script>
            
        </script>
    </head>
    <body>
        
        <center>
            <header><img src="" width="100" height="100" alt="BEFIT Centre Logo"/></header>
            <table>
                <tr>
                    <td>Trainer: </td>
                    <td><select id="trainer" name="trainer" onchange="" style="width:100%;">
                            <option value="">Select a trainer</option>
                            <option value="first">text1</option>
                            <option value="second">text2</option>
                            <option value="third">text3</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td>Session Type: </td>
                    <td><select id="session-type" name="session-type" >
                            <option value="">Select a session</option>
                            <option value="30 minutes session">Personal Training 30 min - Member Casual $69.00</option>
                            <option value="1 hour session">Personal Training 1 hr - Concession $0.00</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <p>A customized 30 minute Personal Training session with yout PT. Please bring <br>
                        with you a towel and water bottle.
                        </p>
                </tr>
                <tr>
                    <th>Day</th>
                    <th>Time</th>
                    <th>Price</th>
                </tr>
                
                <tr>
                    <td><input type="checkbox" id="id" name="name" value="value"> Wednesday 05/09/2022</td>
                    <td>01:30PM to 02:30PM</td>
                    <td>$0.00</td>
                </tr>
                
            </table>
            
            <input type="reset" value="Back">
        </center>
    
    </body>
</html>
