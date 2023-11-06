<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 11/2/23
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>
    <a href="/employee">Danh sách nhân viên</a>
</h2>
<div>
    <form method="post">
        <table>
            <caption>
                <h2>Chỉnh sửa thông tin nhân viên</h2>
            </caption>
            <tr>
                <th>Tên nhân viên:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" value="${employee.getName()}"/>
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="date" name="birthday" id="birthday" size="45" value="${employee.getBirthday()}"/>
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="phoneNumber" id="phoneNumber" size="45" value="${employee.getPhoneNumber()}"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value="${employee.getEmail()}"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value="${employee.getAddress()}"/>
                </td>
            </tr>
            <tr>
                <th>Số CCCD:</th>
                <td>
                    <input type="text" name="identificationCard" id="identificationCard" size="15" value="${employee.getIdentificationCard()}"/>
                </td>
            </tr>
            <tr>
                <th>Lương:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="15"value="${employee.getSalary()}"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Lưu"/>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
