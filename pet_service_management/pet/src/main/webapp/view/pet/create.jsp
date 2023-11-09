<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới thú cưng</title>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>

    </style>
</head>
<body>

<%--<div>--%>
<%--    <jsp:include page="../home/navbar.jsp"/>--%>
<%--    <div class="container">--%>
<%--        <div class="row mt-5">--%>

<%--            <div class="col-lg-9 col-12 right row " id="right">--%>
<%--                <div>--%>
<%--                    <h2 class="mb-3 mt-3" style="">Thêm thú cưng</h2>--%>
<%--                </div>--%>
<%--                <form method="post">--%>
<%--                    <div class="border row">--%>
<%--                        <div class="col-lg-3 col-md-5 col-12 mb-3">--%>

<%--                            <input name="name" class="form-control-plaintext" placeholder="Nhập tên pet"--%>
<%--                                   size="50"/>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-9 col-md-7 col-12 mb-3">--%>

<%--                            <input name="weight" class="form-control-plaintext" placeholder="Nhập cân nặng"--%>
<%--                                   size="50"/>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="border row">--%>
<%--                        <div class="col-lg-3 col-md-5 col-12 mb-3">--%>
<%--                            <input name="descriptions" class="form-control-plaintext" placeholder="Nhập mô tả"--%>
<%--                                   size="50"/>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-9 col-md-7 col-12 mb-3">--%>

<%--                            <input name="id_type_pet" class="form-control-plaintext" placeholder="Nhập mã thú cưng"--%>
<%--                                   size="50"/>--%>

<%--                        </div>--%>
<%--                        <div class="border row" style="position: relative;left: 11px">--%>
<%--                            <div class="col-lg-3 col-md-5 col-12 mb-3">--%>
<%--                                <input name="id_customer" class="form-control-plaintext"--%>
<%--                                       placeholder="Nhập mã khách hàng"--%>
<%--                                       size="50"/>--%>
<%--                            </div>--%>


<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--                <div class="row mt-2" style="text-align: center">--%>
<%--                    <div class="col-6">--%>
<%--                        <a href="/pet" class="btn btn-warning">Quay lại</a>--%>
<%--                    </div>--%>
<%--                    <div class="col-6">--%>
<%--                        <input hidden="hidden" name="role" value="3"/>--%>
<%--                        <input type="submit" value="Lưu"/>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container col-12 main">
    <div class="table-title">
        <div class="row">
            <h2>Thêm mới thú cưng</h2>
        </div>
    </div>
    <form method="post">
        <div class="mb-4 mt-2 row">
            <label for="name" class="col-sm-2 col-form-label">Tên thú cưng(<span style="color: red">*</span>)</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
        </div>
        <div class="mb-4 mt-2 row">
            <label for="weight" class="col-sm-2 col-form-label">Cân nặng(<span
                    style="color: red">*</span>)</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="weight" name="weight" required>
            </div>
        </div>
        <div class="mb-4 mt-2 row">
            <label for="descriptions" class="col-sm-2 col-form-label">Mô tả(<span style="color: red">*</span>)</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="descriptions" name="descriptions" required>
            </div>
        </div>
        <div class="mb-4 mt-2 row">
            <label for="id_type_pet" class="col-sm-2 col-form-label">Mã thú cưng(<span style="color: red">*</span>)</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="id_type_pet" name="id_type_pet" required>
            </div>
        </div>

        <div class="row mt-1 mb-2" style="text-align: center">
            <div class="col-6">
                <a href="/service" class="btn btn-warning ">Quay lại</a>
            </div>
            <div class="col-6">
                <button type="submit" class="btn btn-warning ">Thêm</button>
            </div>
        </div>
        <input type="hidden" name="role" value="3">
        <input type="hidden" name="id" value="${service.getId()}">

    </form>
</div>
</body>
</html>