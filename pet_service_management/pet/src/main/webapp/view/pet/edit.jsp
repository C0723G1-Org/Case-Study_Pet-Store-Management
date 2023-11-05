<%--
  Created by IntelliJ IDEA.
  User: TGDD
  Date: 11/5/2023
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>Quản lý dịch vụ</h1>
    <a class="btn btn-success" href="/pet">Trở về danh sách dịch vụ</a>
</center>
<div align="center">
    <form action="/pet?action=edit" method="/post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Chỉnh sửa dịch vụ
                </h2>
            </caption>
            <c:if test="${pet != null}">
                <input type="hidden" name="id" value="<c:out value='${pet.id}' />"/>
            </c:if>
            <tr>
                <th>Tên dịch vụ:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${pet.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Cân nặng:</th>
                <td>
                    <input type="number" name="weight" size="45"
                           value="<c:out value='${pet.weight}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="descriptions" size="15"
                           value="<c:out value='${pet.descriptions}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mã pet:</th>
                <td>
                    <input type="number" name="id_type_pet" size="15"
                           value="<c:out value='${pet.id_type_pet}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mã khách hàng:</th>
                <td>
                    <input type="number" name="id_customer" size="15"
                           value="<c:out value='${pet.id_customer}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
