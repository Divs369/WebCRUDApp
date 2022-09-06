<%@page import="com.bean.Employee"%>
<%@page import="com.dao.EmployeeDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped">
      <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Mobile</th>
          <th>Gender</th>
          <th>Address</th>
          <th>Edit</th>
          <th>Delete</th>
      </tr>
      
      <%
          List<Employee> list = EmployeeDao.getAllEmployee();
          for(Employee e : list) {
      %> 
         <tr>
             <td><%=e.getId() %></td>
             <td><%=e.getFname() %></td>
             <td><%=e.getLname() %></td>
             <td><%=e.getEmail() %></td>
             <td><%=e.getMobile() %></td>
             <td><%=e.getGender() %></td>
             <td><%=e.getAddress() %></td>
             
             <td>
                 <form name="edit" action="EmpController" method="post">
                 <input type="hidden" name="id" value="<%=e.getId() %>">
                 <input type="submit" name="action" value="Edit" class="btn btn-success">
                 </form>
             </td>
             <td>
                 <form name="delete" action="EmpController" method="post">
                 <input type="hidden" name="id" value="<%=e.getId() %>">
                 <input type="submit" name="action" value="Delete" class="btn btn-danger">
                 </form>
             </td>
      <%  	  
          }
      %>
      
</table>
</body>
</html>