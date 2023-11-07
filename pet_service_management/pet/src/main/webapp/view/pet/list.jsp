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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div style="background: #e5d8da; height: 100%">
    <div class="row pt-6">
        <h1 style="text-align: center">
            Quản Lý Thú Cưng
        </h1>
    </div>
    <hr>
    <div class="d-flex">
        <div class="col-lg-8">
            <div style="padding-left: 5%">
                <a style="box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);" class="btn btn-success" href="/pet?action=create">Thêm mới</a>
            </div>

        </div>
        <div class="col-lg-4">

            <div style="padding-right: 10%">
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button style="box-shadow: 0px 0px 6px rgba(0, 0, 0, 10);" class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>
    <div class="row p-5">

        <table >
            <thead style="background-color: #5fb4af">
            <th> STT</th>
            <th> Tên Pet</th>
            <th> Cân nặng</th>
            <th> Mô tả</th>
            <th>Chỉnh sửa</th>
            <th>Xóa</th>

            </thead>
            <tbody>
            <c:forEach var="pet" items="${petList}" varStatus="status">
                <tr style="background-color: #8bbebb">
                    <td>${status.count}</td>
                    <td>${pet.getName()}</td>
                    <td>${pet.getWeight()}</td>
                    <td>${pet.getDescriptions()}</td>
                    <td>
                        <a  href="/pet?action=edit&id=${pet.getId()}" class="btn btn-success">
                            Edit
                        </a>

                    </td>
                    <td>
                        <button  type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="modalDelete('${pet.getId()}','${pet.getName()}')">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Xoá</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <span> Bạn có muốn xoá dịch vụ :  </span><span id="deleteName"> </span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                        <a id="idDelete" class="btn btn-primary">Xoá</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    function modalDelete(id, name) {
        document.getElementById("deleteName").innerText = name;
        document.getElementById("idDelete").setAttribute("href",`/pet?action=delete&id=` + id);
    }
</script>
</html>
