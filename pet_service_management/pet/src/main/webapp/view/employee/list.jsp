<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 11/2/23
  Time: 10:24 PM
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
  <style>
    #logo {
      width: 100%;
    }

    body {
      background-color: #efcfd4;
    }

    .group {
      display: flex;
      line-height: 28px;
      align-items: center;
      position: relative;
      width: 100%;
    }

    .input {
      height: 40px;
      line-height: 28px;
      padding: 0 1rem;
      width: 100%;
      padding-left: 2.5rem;
      border: 2px solid transparent;
      border-radius: 8px;
      outline: none;
      background-color: #D9E8D8;
      color: #0d0c22;
      box-shadow: 0 0 5px #C1D9BF, 0 0 0 10px #f5f5f5eb;
      transition: .3s ease;
    }

    .input::placeholder {
      color: #777;
    }

    .icon {
      position: absolute;
      left: 1rem;
      fill: #777;
      width: 1rem;
      height: 1rem;
    }

    a {
      text-decoration: none;
    }
  </style>
</head>
<body>
<div>
  <jsp:include page="../home/navbar.jsp" />

  <div class="row pt-5">
    <h1 style="text-align: center">
      Quản lý Nhân viên
    </h1>
  </div>
  <div class="d-flex">
    <div class="col-lg-8">
      <div style="padding-left: 5%">
        <a href="/employee?action=create">
          <button type="button" class="btn btn-success">Thêm nhân viên</button>
        </a>
      </div>

    </div>
    <div class="col-lg-4">

      <div style="padding-right: 10%">
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
  <div class="row p-5">

    <table class="table table-striped">
      <thead style="background: #efcfd4">
      <th>Mã nhân viên</th>
      <th>Tên nhân viên</th>
      <th>Ngày sinh</th>
      <th>Số điện thoại</th>
      <th>Email</th>
      <th>Địa chỉ</th>
      <th>Số CCCD</th>
      <th>Lương</th>
      <th>Tên tài khoản</th>
      <th>Chỉnh sửa</th>
      </thead>
      <tbody>
      <c:forEach var="employee" items="${listEmployee}" varStatus="status">
        <tr>
          <td>${employee.getId()}</td>
          <td>${employee.getName()}</td>
          <td>${employee.getBirthday()}</td>
          <td>${employee.getPhoneNumber()}</td>
          <td>${employee.getEmail()}</td>
          <td>${employee.getAddress()}</td>
          <td>${employee.getIdentificationCard()}</td>
          <td>${employee.getSalary()}</td>
          <td>${employee.getUsername()}</td>
          <td>
            <a href="/employee?action=edit&id=${employee.getId()}">
              <button>Edit</button>
            </a>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#exampleModal"
                    onclick="modalDelete('${employee.getId()}','${employee.getName()}')">
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
            <span> Bạn có muốn xoá nhân viên :  </span><span id="deleteName"> </span>
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
    document.getElementById("idDelete").setAttribute("href", `/employee?action=delete&id=` + id);
  }
</script>
</html>