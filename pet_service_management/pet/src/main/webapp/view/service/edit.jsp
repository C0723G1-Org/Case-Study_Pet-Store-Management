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
    <title>Service Management Application</title>
</head>
<body>
<center>
    <h1>Quản lý dịch vụ</h1>
    <a class="btn btn-success" href="/service">Trở về danh sách dịch vụ</a>
</center>
<div align="center">
    <form action="service?action=edit" method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Chỉnh sửa dịch vụ
                </h2>
            </caption>
            <c:if test="${service != null}">
                <input type="hidden" name="id" value="<c:out value='${service.id}' />"/>
            </c:if>
            <tr>
                <th>Tên dịch vụ:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${service.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Giá:</th>
                <td>
                    <input type="number" name="price" size="45"
                           value="<c:out value='${service.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Đơn vị:</th>
                <td>
                    <input type="text" name="unit" size="15"
                           value="<c:out value='${service.unit}' />"
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