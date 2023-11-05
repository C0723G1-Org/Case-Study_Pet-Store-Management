<%--
  Created by IntelliJ IDEA.
  User: TGDD
  Date: 11/3/2023
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm mới dịch vụ</title>
</head>
<body>
<center>
<h2>Thêm Mới Dịch Vụ</h2>
</center>
<center>
<table>
    <form action="/service?action=create" method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Tên dịch vụ: </th>
                <td>
                    <input type="text" name="name" placeholder="Nhập tên dịch vụ" size="45">
                </td>
            </tr>
            <tr>
                <th>Giá: </th>
                <td>
                    <input type="number" name="price" placeholder="Nhập giá dịch vụ" size="45">
                </td>

            </tr>
            <tr>
                <th>Đơn vị: </th>
                <td>
                    <input type="text" name="unit" placeholder="Nhập đơn vị" size="45">
                </td>

            </tr>
            <tr>
                <td colspan="2" align="center">
                   <button type="submit"> Thêm </button>
                </td>

            </tr>

        </table>

    </form>
</table>
</center>
</body>
</html>
