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
    <title>Edit pet</title>
</head>
<body style="background:#e5d8da; height: 100%;">

<center>
    <h1>Chỉnh sửa thú cưng</h1>
    <hr>
    <br>
</center>
<button style="background: #259425;
    border: none;box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);">
    <a style="text-decoration: none; color: white; border: none" href="/pet?action=list.jsp"><< Trở về danh sách Thú cưng</a>
</button>
<div align="center">
    <form action="/pet?action=edit" method="/post">
        <table cellpadding="15">
            <caption>
            </caption>
            <c:if test="${pet != null}">
                <input type="hidden" name="id" value="<c:out value='${pet.id}' />"/>
            </c:if>
            <tr style="background: #5fb4af">
                <th>Tên thú cưng:</th>
                <td>
                    <input style="background: #bdf2ef;border: none;height: 25px" type="text" name="name" size="45"
                           value="<c:out value='${pet.name}' />"
                    />
                </td>
            </tr>
            <tr style="background: #89ded9;">
                <th>Cân nặng:</th>
                <td>
                    <input style="background: #bdf2ef;border: none;height: 25px" type="number" name="weight" size="45"
                           value="<c:out value='${pet.weight}' />"
                    />
                </td>
            </tr>
            <tr style="background: #5fb4af">
                <th>Mô tả:</th>
                <td>
                    <input style="background: #bdf2ef;border:none;height: 25px" type="text" name="descriptions" size="45"
                           value="<c:out value='${pet.descriptions}' />"
                    />
                </td>
            </tr>
            <tr style="background: #89ded9;">
                <th>Mã thú cưng:</th>
                <td>
                    <input style="background: #bdf2ef;border: none;height: 25px" type="number" name="id_type_pet" size="45"
                           value="<c:out value='${pet.id_type_pet}' />"
                    />
                </td>
            </tr>
            <tr  style="background: #5fb4af">
                <th>Mã khách hàng:</th>
                <td>
                    <input style="background: #bdf2ef;border: none;height: 25px" type="number" name="id_customer" size="45"
                           value="<c:out value='${pet.id_customer}' />"
                    />
                </td>
            </tr>
            <tr style="background: #3E7F7A;">
                <td colspan="2" align="center">
                    <input style="background: darkgreen;color: white;border: none;box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);" type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
