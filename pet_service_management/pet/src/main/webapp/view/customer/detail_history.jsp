<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 11/5/2023
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Detail History</title>
</head>
<body>
<div class="main">
  <div class="container">
    <div class="row mt-5">
      <div class="col-lg-3 col-12 left ">
        <div class="accordion accordion-flush" id="accordionFlushExample">
          <div class="accordion-item">
            <img src="../../8391901.jpg" style="width: 100%">
            <h2 class="accordion-header" id="flush-headingOne">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseOne" aria-expanded="false"
                      aria-controls="flush-collapseOne" style="font-weight: bold">
                ${customer.name}
              </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse "
                 aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
              <div class="accordion-body ">
                <a href="/customer"
                   class="list-group-item list-group-item-action mb-3 btn btn-warning">Thông
                  tin cá nhân</a>
                <a href="/customer?action=update&id=${customer.id}"
                   class="list-group-item list-group-item-action mb-3  btn btn-warning">Chỉnh
                  sửa thông tin</a>

                <a href="/customer?action=history&id=${customer.id}"
                   class="list-group-item list-group-item-action mb-3  btn btn-warning">
                  Lịch sử booking</a>
                <button type="button"
                        class="list-group-item list-group-item-action mb-3 btn btn-outline-warning text-danger"
                        data-bs-toggle="modal" data-bs-target="#exampleModal"
                        onclick="sendInfoMoDal('${customer.id}','${customer.name}')">
                  Xóa tài khoản
                </button>
                <a href="/home?action=logout"
                   class="list-group-item list-group-item-action btn btn-outline-warning text-danger">Đăng
                  xuất</a>
              </div>
            </div>
          </div>
        </div>
        <%--                <c:if test="${flag}">--%>
        <%--                    <div class="toast show">--%>
        <%--                        <div class="toast-header">--%>
        <%--                            Toast Header--%>
        <%--                            <button type="button" class="btn-close" data-bs-dismiss="toast"></button>--%>
        <%--                        </div>--%>
        <%--                        <div class="toast-body">--%>
        <%--                            Some text inside the toast body--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </c:if>--%>
      </div>
      <div class="col-lg-9 col-12 right row " id="right">
        <div>
          <h2 class="mb-3 mt-3" style="">Chi tiết lịch sử booking ${customer.name}</h2>
        </div>
        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input class="form-control-plaintext " disabled value="Mã booking:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <c:choose>
              <c:when test="${booking.bookingId<10}">
                <input class="form-control-plaintext" disabled value="B00${booking.bookingId}"/>
              </c:when>
              <c:when test="${booking.bookingId<100}">
                <input class="form-control-plaintext" disabled value="B0${booking.bookingId}"/>
              </c:when>
              <c:otherwise>
                <input class="form-control-plaintext" disabled value="B${booking.bookingId}"/>
              </c:otherwise>
            </c:choose>
          </div>
        </div>

        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input class="form-control-plaintext " disabled value="Tên pet:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <input class="form-control-plaintext" disabled value="${customer.name}"/>
          </div>
        </div>
        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input class="form-control-plaintext " disabled value="Ngày sinh:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <input type="date" class="form-control-plaintext" disabled value="${customer.birthday}"/>
          </div>
        </div>
        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input class="form-control-plaintext" disabled value="Số điện thoại:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <input class="form-control-plaintext" disabled value="${customer.telephone}"/>
          </div>
        </div>
        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input class="form-control-plaintext" disabled value="Email:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <input class="form-control-plaintext" disabled value="${customer.email}"/>
          </div>
        </div>
        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input style="opacity: 1" class="form-control-plaintext" disabled value="Địa chỉ:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <input style="opacity: 1" class="form-control-plaintext" disabled value="${customer.address}"/>
          </div>
        </div>
        <div class="border row">
          <div class="col-lg-3 col-md-5 col-12 mb-3">
            <input style="opacity: 1" class="form-control-plaintext" disabled value="Giới tính:"/>
          </div>
          <div class="col-lg-9 col-md-7 col-12 mb-3">
            <c:if test="${customer.gender==0}">
              <input style="opacity: 1" class="form-control-plaintext" disabled value="Nữ"/>
            </c:if>
            <c:if test="${customer.gender==1}">
              <input style="opacity: 1" class="form-control-plaintext" disabled value="Nam"/>
            </c:if>
          </div>
        </div>
        <div class="row mt-2" style="text-align: center">
          <div class="col-6">
            <a href="#" class="btn btn-warning">Trang chủ</a>
          </div>
          <div class="col-6">
            <a href="/customer?action=update&id=${customer.id}" type="submit" class="btn btn-warning "
            >Chỉnh sửa</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>