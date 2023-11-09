<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: TGDD--%>
<%--  Date: 11/5/2023--%>
<%--  Time: 6:40 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Edit pet</title>--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">--%>
<%--</head>--%>
<%--<body style="background:#e5d8da; height: 100%;">--%>

<%--<center>--%>
<%--</center>--%>
<%--&lt;%&ndash;<button style="background: #259425;&ndash;%&gt;--%>
<%--&lt;%&ndash;    border: none;box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a style="text-decoration: none; color: white; border: none" href="/pet?action=list.jsp"><< Trở về danh sách Thú cưng</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</button>&ndash;%&gt;--%>
<%--<div>--%>
<%--    <a href="/pet?action=list.jsp">--%>
<%--        <button style="font-size: 24px;--%>
<%--            border: none;--%>
<%--            border-radius: 5px;--%>
<%--            background: lightslategrey;"><i class="fa fa-arrow-left"></i> Trở về danh sách thú cưng--%>
<%--        </button>--%>
<%--    </a>--%>
<%--</div>--%>

<%--<h1 style="text-align: center">Chỉnh sửa thú cưng</h1>--%>
<%--<div align="center">--%>
<%--    <form action="/pet?action=edit" method="post">--%>
<%--        <table cellpadding="15">--%>
<%--            <caption>--%>
<%--            </caption>--%>
<%--            <c:if test="${pet != null}">--%>
<%--                <input type="hidden" name="id" value="<c:out value='${pet.id}' />"/>--%>
<%--            </c:if>--%>
<%--            <tr style="background: #5fb4af">--%>
<%--                <th>Tên thú cưng:</th>--%>
<%--                <td>--%>
<%--                    <input style="background: #bdf2ef;border: none;height: 25px" type="text" name="name" size="45"--%>
<%--                           value="<c:out value='${pet.name}' />"--%>
<%--                    />--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr style="background: #89ded9;">--%>
<%--                <th>Cân nặng:</th>--%>
<%--                <td>--%>
<%--                    <input  style="background: #bdf2ef;border: none;height: 25px" type="number" name="weight" size="45"--%>
<%--                           value="<c:out value='${pet.weight}' />"--%>
<%--                    />--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr style="background: #5fb4af">--%>
<%--                <th>Mô tả:</th>--%>
<%--                <td>--%>
<%--                    <input style="background: #bdf2ef;border:none;height: 25px" type="text" name="descriptions" size="45"--%>
<%--                           value="<c:out value='${pet.descriptions}' />"--%>
<%--                    />--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr style="background: #89ded9;">--%>
<%--                <th>Mã thú cưng:</th>--%>
<%--                <td>--%>
<%--                    <input style="background: #bdf2ef;border: none;height: 25px" type="number" name="id_type_pet" size="45"--%>
<%--                           value="<c:out value='${pet.id_type_pet}' />"--%>
<%--                    />--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr  style="background: #5fb4af">--%>
<%--                <th>Mã khách hàng:</th>--%>
<%--                <td>--%>
<%--                    <input style="background: #bdf2ef;border: none;height: 25px" type="number" name="id_customer" size="45"--%>
<%--                           value="<c:out value='${pet.id_customer}' />"--%>
<%--                    />--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr style="background: #3E7F7A;">--%>
<%--                <td colspan="2" align="center">--%>
<%--                    <input style="background: darkgreen;color: white;border: none;box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);" type="submit" value="Save"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>


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
    <a href="/pet">Danh sách thú cưng</a>
</h2>
<div>
    <form method="post">
        <table>
            <caption>
                <h2>Chỉnh sửa thông tin thú cưng</h2>
            </caption>
            <tr>
                <th>Tên thú cưng:</th>
                <td>
                    <input type="text" name="name"  size="45" value="${pet.getName()}"/>
                </td>
            </tr>
            <tr>
                <th>Cân nặng:</th>
                <td>
                    <input type="number" name="weight" size="45" value="${pet.getWeight()}"/>
                </td>
            </tr>
            <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="descriptions" size="45" value="${pet.getDescriptions()}"/>
                </td>
            </tr>
            <tr>
                <th>Mã thú cưng:</th>
                <td>
                    <input type="number" name="id_type_pet" value="${pet.getId_type_pet()}"/>
                </td>
            </tr>
            <tr>
                <th>Mã khachs hàng:</th>
                <td>
                    <input disabled type="number" name="id_customer"  size="45" value="${pet.getId_customer()}"/>
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