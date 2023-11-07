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
    <style>
        .input{
            height: 25px;
        }
    </style>
</head>
<body  style="background:#e5d8da; height: 100%;">
<h1 style="text-align: center">Thêm Mới Pet</h1>
    <hr>

<button  style="background: #259425;
    border: none;box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);">
    <a style="text-decoration: none; color: white" href="/pet"> << Trở về danh sách pet</a>
</button>
<center>
    <table>
        <form action="/pet?action=create" method="post">
            <table  cellpadding="15">
                <tr style="background: #5fb4af">
                    <th>Tên pet: </th>
                    <td>
                        <input class="input" type="text" name="name" placeholder="Nhập tên pet" size="45">
                    </td>
                </tr>
                <tr style="background: #89ded9">
                    <th>cân nặng: </th>
                    <td>
                        <input class="input" type="number" name="weight" placeholder="Nhập cân nặng" size="45">
                    </td>

                </tr>
                <tr style="background: #5fb4af">
                    <th>Mô tả </th>
                    <td>
                        <input class="input" type="text" name="descriptions" placeholder="Nhập mô tả" size="45">
                    </td>

                </tr>
                <tr style="background: #89ded9">
                    <th>Mã pet </th>
                    <td>
                        <input class="input" type="number" name="id_type_pet" placeholder="Nhập mã pet" size="45">
                    </td>

                </tr>
                <tr style="background: #5fb4af">
                    <th>Mã khách hàng </th>
                    <td>
                        <input class="input" type="number" name="id_customer" placeholder="Nhập mã khách hàng" size="45">
                    </td>

                </tr>
                <tr style="background: #3E7F7A">
                    <td colspan="2" align="center">
                        <button style="background:#006400; border: none; color: white;box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);" type="submit"> Thêm </button>
                    </td>

                </tr>

            </table>

        </form>
    </table>
</center>
</body>
</html>
