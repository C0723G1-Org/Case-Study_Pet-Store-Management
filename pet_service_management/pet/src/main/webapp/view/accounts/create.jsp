<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/3/2023
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create User</title>
  <style>
    table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }

    td, th {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }

    tr:nth-child(even) {
      background-color: #dddddd;
    }
  </style>
</head>
<body>
<h3>Insert Account</h3>
<form action="/accounts?action=create" method="post">
  <table>
    <tr>
      <th>Username</th>
      <td><input type="text" name="username"></td>
    </tr>
    <tr>
      <th>Password</th>
      <td><input type="password" name="password"></td>
    </tr>
    <tr>
      <th>Roles</th>
      <td>
        <select name="roles" id="roles">
          <c:forEach items="${roleList}" var="role">
            <option value="${role.getIdRole()}">${role.getRoles()}</option>
          </c:forEach>
        </select>
      </td>
    </tr>
  </table>
  <button type="submit">Insert</button>
</form>
</body>
</html>