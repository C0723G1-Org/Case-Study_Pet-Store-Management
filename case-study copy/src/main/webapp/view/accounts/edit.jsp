<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/4/2023
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit User</title>
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
<h2>Edit User</h2>
<form method="post">
    <table>
        <tr>
            <th>Username</th>
            <td>${account.getUsername()}</td>
        </tr>
        <tr>
            <th>Roles</th>
            <td>
                <select name="roleId" id="roles">
                    <c:forEach items="${roleList}" var="role">
                        <option value="${role.getIdRole()}">
                                ${role.getRoles()}
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>
    <button type="submit">Edit</button>
</form>
</body>
</html>
