<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Thêm mới Dịch vụ</title>
  <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
  />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>

  </style>
</head>
<body>

<div>
  <jsp:include page="../home/navbar.jsp"/>
  <div class="container">
    <div class="row mt-5">

      <div class="col-lg-9 col-12 right row " id="right">
        <div>
          <h2 class="mb-3 mt-3" style="">Thêm Dịch Vụ</h2>
        </div>
            <form action="/service?action=create" method="post">
              <table border="1" cellpadding="5">
                <tr>
                  <th>Tên dịch vụ: </th>
                  <td>
                    <input type="text" name="name" placeholder="Nhập tên dịch vụ" size="45">
                  </td>
                </tr>
                <tr>
                  <th>Giá: </th>
                  <td>
                    <input type="number" name="price" placeholder="Nhập giá dịch vụ" size="45">
                  </td>

                </tr>
                <tr>
                  <th>Đơn vị: </th>
                  <td>
                    <input type="text" name="unit" placeholder="Nhập đơn vị" size="45">
                  </td>

                </tr>
                <tr>
                  <td colspan="2" align="center">
                    <button type="submit"> Thêm </button>
                  </td>

                </tr>
              </table>
            </form>
      </div>
    </div>
  </div>
    </div>
</div>
</body>
</html>