<%-- 
    Document   : add-class
    Created on : Oct 2, 2022, 8:58:05 AM
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEFIT Centre</title>
        <style>
            table{
                border-spacing: 15px;
               
                width: 500px;
            }
            
            th{
                text-align:right; 
            }
            td{
                width:100%;
            }
            
            input[type="date"]{
                width:250px;
            }
            input[type="text"]{
                width:248px;
            }
            input[type= "time"]{
                width:250px;
            }
            select{
                width:255px;
            }
            
            .actions{
                display: flex;
                justify-content: space-between;
                width:650px;
            }
            
            .actions .btn{
                width: 200px;
                padding:7px;
                
            }
            
            .actions .btn:hover{
                cursor:pointer;
            }
        </style>
    </head>
    <body>
    <center>
        <form action="#" method="post">
        <h1>Add Class</h1>
        <table>
            <tr>
                <th>Class</th>
                <td><select id="class" name="class">
                        <option value="first">text1</option>
                        <option value="second">text2</option>
                        <option value="third">text3</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Date</th>
                <td><input type="date"></td>
            </tr>
            <tr>
                <th>From</th>
                <td><input type="time" id="id"></td>
            </tr>
            <tr>
                <th>To</th>
                <td><select id="time-finish" name="time-finish">
                        <option value="first">text1</option>
                        <option value="second">text2</option>
                        <option value="third">text3</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Repeats</th>
                <td><select id="appointment" name="appointment">
                        <option value="first">N/A(Single Appointment)</option>
                        <option value="first">Weekly</option>
                        <option value="second">Fortnightly</option>
                        <option value="third">3 Weeks</option>
                        <option value="third">4 Weeks</option>
                        <option value="third">6 Weeks</option>
                        <option value="third">8 Weeks</option>
                        <option value="third">Monthly</option>
                        <option value="third">Daily</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Repeats Ends</th>
                <td><input type="text" id="txt-field" name="resource"></td>
            </tr>
            <tr>
                <th>Resource</th>
                <td><input type="text" id="txt-field" name="resource"></td>
            </tr>
            <tr>
                <th>Teacher/Instructor</th>
                <td><select id="instructor" name="instructor">
                        <option value="#"></option>
                        <option value="first">text1</option>
                        <option value="second">text2</option>
                        <option value="third">text3</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Note</th>
                <td><input type="text" id="txt-field" name="note"></td>
            </tr>
            
           
        </table>
         <div class="actions">
             <a href="#"><button type="reset"  class="btn">Back</button></a>
            <a href="#"><button type="reset"  class="btn">Back to Calendar</button></a>
            <a href="#"><button type="submit"  class="btn">Save Booking</button></a>
        </div>
        
        </form>
    </center>
    </body>
</html>
