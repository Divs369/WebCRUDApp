<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>

<%-- 

<%  %> : This is a Scriplet Tag. Use to write a Java code.
    
<%= %> : Value Expression Tag.

<%@include file="name" %> : To include other jsp file. 

<%
    if(true) {
%>
<b>Condition is True</b>   
<%  	
    } 
    else {
%> 
<b>Condition is False</b>
<% 	
    }
%>
--%>

<body>
<h3 align="center">Employee Registration Form</h3>
<br><br>

<form name="insert" method="post" action="EmployeeController">

<table align="center">

    <tr>
       <td>First Name</td>
       <td><input type="text" name="fname" onblur="checkFname();"></td>
       <td><span id="fname" style="color:red"></span></td>
    </tr>
    
    <tr>
       <td>Last Name</td>
       <td><input type="text" name="lname" onblur="checkLname();"></td>
       <td><span id="lname" style="color:red"></span></td>
    </tr>
    
    <tr>
       <td>Email ID</td>
       <td><input type="text" name="email" onblur="checkEmail();"></td>
       <td><span id="email" style="color:red"></span></td>
    </tr>
    
    <tr>
       <td>Mobile Number</td>
       <td><input type="text" name="mobile" onblur="checkMobile();"></td>
       <td><span id="mobile" style="color:red"></span></td>
    </tr>
    
    <tr>
       <td>Password</td>
       <td><input type="password" name="password" onblur="checkPassword();"></td>
       <td><span id="password" style="color:red"></span></td>
    </tr>
    
    <tr>
       <td>Confirm Password</td>
       <td><input type="password" name="cpassword" onblur="checkCPassword();"></td>
       <td><span id="cpassword" style="color:red"></span></td>
    </tr>
    
    <tr>
       <td>Gender</td>
       <td><input type="radio" name="gender"  value="Male">Male
       <input type="radio" name="gender"  value="Female">Female
       </td>
    </tr>
    
    <tr>
       <td>Address</td>
       <td><textarea rows="5" cols="22"></textarea></td>
    </tr>
    
    <tr>
		<td><input type="submit" name="action" value="Submit" class="btn btn-danger"></td>
	</tr>   
    
</table>
</form>
</body>
</html>>