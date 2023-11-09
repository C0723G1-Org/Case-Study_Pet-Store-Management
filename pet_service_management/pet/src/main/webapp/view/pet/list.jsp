<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
<style>
    .main {
        background-color: #ffff;
        padding: 0px;
    }
    .table-title {
        padding-bottom: 20px;
        background: #435d7d;
        color: #fff;
        padding: 16px 30px;
        min-width: 100%;
        margin-top: 20px;
        border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
        margin: 5px 0 0;
        font-size: 24px;
    }
    .table-title .btn-group {
        float: right;
    }
    .table-title .btn {
        color: #fff;
        float: right;
        font-size: 13px;
        border: none;
        min-width: 50px;
        border-radius: 2px;
        border: none;
        outline: none !important;
        margin-left: 10px;
    }
    .table-title .btn i {
        float: left;
        font-size: 21px;
        margin-right: 5px;
    }
    .table-title .btn span {
        float: left;
        margin-top: 2px;
    }
    .table .padding{
        padding-top: 16px;
    }

</style>

</head>
<body>
<div>
    <jsp:include page="../home/navbar.jsp"/>
</div>
<div class="col-12 container main ">
    <div class="table-title">
        <div class="row">
            <div class="col-sm-6">
                <h2>Quản Lý Thú Cưng</h2>
            </div>
            <div class="col-sm-6">
                <a href="/pet?action=create" class="btn btn-success" >
                    <span>Thêm mới</span></a>
            </div>
        </div>
    </div>
    <table class="table" >
        <thead>
        <tr >
            <th scope="col">STT</th>
            <th scope="col">Tên</th>
            <th scope="col">Loại</th>
            <th scope="col">Cân nặng</th>
            <th scope="col">Mô tả</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="pet" items="${petList}" varStatus="status">
                            <tr style="background-color: #8bbebb">
                                <td>${status.count}</td>
                                <td>${pet.getName()}</td>
                                <td>${pet.getTypePet()}</td>
                                <td>${pet.getWeight()}</td>
                                <td>${pet.getDescriptions()}</td>
                                <td>
                                    <a href="/pet?action=edit&id=${pet.getId()}" class="btn btn-success">
                                        Edit
                                    </a>

                                </td>
                                <td>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal"
                                            onclick="modalDelete('${pet.getId()}','${pet.getName()}')">
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
                            <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Huỷ</button>
                            <a id="idDelete" class="btn btn-warning">Xoá</a>
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
            document.getElementById("idDelete").setAttribute("href", `/pet?action=delete&id=` + id);
        }
    </script>
</div>