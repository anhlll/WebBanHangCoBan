<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 6/3/2023
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Khach Hang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

    <!-- Thêm JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="container-fluid">
<jsp:include page="layout/header_admin.jsp"/>
<br>
<br>
<br>
<br>
<br>
<div class="row">
    <div class="col-3 bg-light">
        <jsp:include page="layout/aside_admin.jsp"/>
    </div>
    <div class="col-9">
        <div class="card p-3">
            <p>
            <div class="row">
                <div class="col-6">
                    <p>
                        <a href="/home_admin" class="btn btn-primary" role="button">Home</a>
                    </p>
                </div>
                <div class="col-6">
                    <p>
                        <a href="/sign-up-view" class="btn btn-primary" role="button">Add new user</a>
                    </p>
                </div>
            </div>

            </p>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">
                        <a href="?sort=id&sortDir=${sortField == 'id' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            ID
                            <i class="${sortField == 'id' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=ma&sortDir=${sortField == 'ma' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Mã
                            <i class="${sortField == 'ma' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=ten&sortDir=${sortField == 'ten' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Tên Khách Hàng
                            <i class="${sortField == 'ten' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=ngaySinh&sortDir=${sortField == 'ngaySinh' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            NgaySinh
                            <i class="${sortField == 'ngaySinh' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=diaChi&sortDir=${sortField == 'diaChi' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            DiaChi
                            <i class="${sortField == 'diaChi' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=sdt&sortDir=${sortField == 'sdt' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Sdt
                            <i class="${sortField == 'sdt' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=email&sortDir=${sortField == 'email' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Email
                            <i class="${sortField == 'email' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=matkhau&sortDir=${sortField == 'matkhau' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            MatKhau
                            <i class="${sortField == 'matkhau' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=chucVu.ten&sortDir=${sortField == 'chucVu.ten' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Role
                            <i class="${sortField == 'chucVu.ten' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listKhachHang.content}" var="kh">
                    <tr>
                        <td>${kh.id}</td>
                        <td>${kh.ma}</td>
                        <td>${kh.ten}</td>
                        <td>${kh.ngaySinh}</td>
                        <td>${kh.diaChi}</td>
                        <td>${kh.sdt}</td>
                        <td>${kh.email}</td>
                        <td>${kh.matkhau}</td>
                        <td>${kh.chucVu.ten}</td>
                        <td>
                            <a href="/edit-khachhang/${kh.id}" class="btn btn-primary" role="button"
                               onclick="return confirm('Bạn có muốn xem chi tiết hay không')">Detail</a>

                            <a href="/delete/${kh.id}" class="btn btn-danger " role="button"
                               onclick="return confirm('Bạn có muốn xóa hay không')">Delete</a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <form>
                <div>
                    <ul class="pagination">
                        <li class="page-item">
                            <c:if test="${listKhachHang.getNumber() + 1 > 1}">
                                <a class="page-link" href="?page=${listKhachHang.getNumber()}&ten=${param.ten}">
                                    Previous
                                </a>
                            </c:if>
                        </li>
                        <li class="page-item"><a class="page-link"> ${listKhachHang.getNumber() + 1}</a></li>
                        <li class="page-item"><a class="page-link">/</a></li>
                        <li class="page-item"><a class="page-link"> ${listKhachHang.getTotalPages()}</a></li>
                        <li class="page-item"><c:if
                                test="${listKhachHang.getNumber() + 1 lt listKhachHang.getTotalPages()}">
                            <a class="page-link" href="?page=${listKhachHang.getNumber() + 2}&ten=${param.ten}">
                                Next
                            </a>
                        </c:if>
                        </li>
                    </ul>
                </div>
            </form>
        </div>
    </div>
</div>

<jsp:include page="layout/footer_admin.jsp"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
