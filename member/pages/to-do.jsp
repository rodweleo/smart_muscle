

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
    </head>
    <body>
    <center>
        <form action="add-to-do.jsp">
            <table>
                
                <tr>
                    <td>Enter your task</td>
                    <td><input type="text" id="txt-field" name="task"></td>
                </tr>
                <tr>
                    <td>Select date and time to start</td>
                    <td><input type="datetime-local" id="txt-field" name="date"></td>
                </tr>
                
            </table>
            <input type="submit" value="Add to List">
        </form>
    </center>
    </body>
</html>
