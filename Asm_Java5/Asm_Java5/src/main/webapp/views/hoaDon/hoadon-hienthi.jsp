<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anhmt
  Date: 14/06/2023
  Time: 2:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cac Hoa Don</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
                <a href="/home_admin" class="btn btn-primary" role="button">Home</a>
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
                        <a href="?sort=ngayTao&sortDir=${sortField == 'ngayTao' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Ngay tao
                            <i class="${sortField == 'ngayTao' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=tinhTrang&sortDir=${sortField == 'tinhTrang' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Tinh trang
                            <i class="${sortField == 'tinhTrang' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=khachHang.ten&sortDir=${sortField == 'khachHang.ten' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Nguoi Nhan
                            <i class="${sortField == 'khachHang.ten' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=khachHang.diaChi&sortDir=${sortField == 'khachHang.diaChi' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Dia chi
                            <i class="${sortField == 'khachHang.diaChi' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listHoaDon.content}" var="sp">
                    <tr>
                        <td>${sp.id}</td>
                        <td>${sp.ngayTao}</td>
                        <td>${sp.tinhTrang}</td>
                        <td>${sp.khachHang.ten}</td>
                        <td>${sp.khachHang.diaChi}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <form>
                <div>
                    <ul class="pagination">
                        <li class="page-item">
                            <c:if test="${listHoaDon.getNumber() + 1 > 1}">
                                <a class="page-link" href="?page=${listHoaDon.getNumber()}">
                                    Previous
                                </a>
                            </c:if>
                        </li>
                        <li class="page-item"><a class="page-link"> ${listHoaDon.getNumber() + 1}</a></li>
                        <li class="page-item"><a class="page-link">/</a></li>
                        <li class="page-item"><a class="page-link"> ${listHoaDon.getTotalPages()}</a></li>
                        <li class="page-item"><c:if
                                test="${listHoaDon.getNumber() + 1 lt listHoaDon.getTotalPages()}">

                            <a class="page-link" href="?page=${listHoaDon.getNumber() + 2}">
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
