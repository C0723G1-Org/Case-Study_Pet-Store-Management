<%--
  Created by IntelliJ IDEA.
  User: TGDD
  Date: 11/5/2023
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2 style="text-align: center">Thêm Mới Pet</h2>
<a style="display: flex;
  justify-content: center;" href="/pet">Trở về danh sách pet</a>
<center>
    <table>
        <form action="/pet?action=create" method="post">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Tên pet: </th>
                    <td>
                        <input type="text" name="name" placeholder="Nhập tên pet" size="45">
                    </td>
                </tr>
                <tr>
                    <th>cân nặng: </th>
                    <td>
                        <input type="number" name="weight" placeholder="Nhập cân nặng" size="45">
                    </td>

                </tr>
                <tr>
                    <th>Mô tả </th>
                    <td>
                        <input type="text" name="descriptions" placeholder="Nhập mô tả" size="45">
                    </td>

                </tr>
                <tr>
                    <th>Mã pet </th>
                    <td>
                        <input type="number" name="id_type_pet" placeholder="Nhập mã pet" size="45">
                    </td>

                </tr>
                <tr>
                    <th>Mã khách hàng </th>
                    <td>
                        <input type="number" name="id_customer" placeholder="Nhập mã khách hàng" size="45">
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
