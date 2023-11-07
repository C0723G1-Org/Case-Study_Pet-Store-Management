<%--
  Created by IntelliJ IDEA.
  User: thaodao
  Date: 03/11/2023
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Booking list</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>
  <style>
    a {
      text-decoration: none;
      color: white;
    }
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
<div class="container">
  <jsp:include page="../home/navbar.jsp" />
  <h1>Booking Management</h1>
  <form action="/booking-management">
    <input hidden="hidden" type="text" name="action" value="findByCountry">
    <input type="text" name="name">
    <button class="btn btn-primary">Find booking date</button>
  </form>
  <button class="btn btn-primary"><a href="/booking-management?action=create">Add New Booking</a></button>
  <h2>List of Users</h2>
  <table class="table table-success table-striped ">
    <tr>
      <th>Mã booking</th>
      <th>Tên Pet</th>
      <th>Tên Khách hàng</th>
      <th>Tên Nhân viên</th>
      <th>TG booking</th>
      <th>TG dự kiến tới</th>
      <th>TG bắt đầu</th>
      <th>TG kết thúc</th>
      <th>Trạng thái booking</th>
      <th>Chỉnh sửa</th>
    </tr>
    <c:forEach var="booking" items="${bookingList}">
      <tr>
        <td><c:out value="${booking.bookingId}"/></td>
        <td><c:out value="${booking.petName}"/></td>
        <td><c:out value="${booking.customerName}"/></td>
        <td><c:out value="${booking.employeeName}"/></td>
        <td><c:out value="${booking.bookingTime}"/></td>
        <td><c:out value="${booking.estimatedTimeOfArrival}"/></td>
        <td><c:out value="${booking.startTime}"/></td>
        <td><c:out value="${booking.endTime}"/></td>
        <td><c:out value="${booking.bookingStatus}"/></td>
        <td>
          <a href="/booking-management?action=edit&id=${booking.bookingId}">Edit</a>
          <a href="/booking-management?action=delete&id=${booking.bookingId}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>