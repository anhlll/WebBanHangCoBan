<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/25/2023
  Time: 8:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Products</title>
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
            <div class="row">
                <div class="col-6">
                    <p>
                        <a href="/home_admin" class="btn btn-primary" role="button">Home</a>
                    </p>
                </div>
                <div class="col-6">
                    <p>
                        <a href="/product/create" class="btn btn-primary" role="button">Thêm áo mới</a>
                    </p>
                </div>
            </div>

            </p>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">
                        <a href="?sort=idSP&sortDir=${sortField == 'idSP' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            ID
                            <i class="${sortField == 'idSP' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=ten&sortDir=${sortField == 'ten' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Tên
                            <i class="${sortField == 'ten' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=soluongton&sortDir=${sortField == 'soluongton' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Số lượng tồn
                            <i class="${sortField == 'soluongton' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=gianhap&sortDir=${sortField == 'gianhap' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            gianhap
                            <i class="${sortField == 'gianhap' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=giaban&sortDir=${sortField == 'giaban' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            giaban
                            <i class="${sortField == 'giaban' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">
                        <a href="?sort=mota&sortDir=${sortField == 'mota' && sortDir == 'asc' ? 'desc' : 'asc'}">
                            Mô tả
                            <i class="${sortField == 'mota' && sortDir == 'asc' ? 'fas fa-caret-up' : 'fas fa-caret-down'}"></i>
                        </a>
                    </th>
                    <th scope="col">Ảnh</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listSanPham.content}" var="sp">
                    <tr>
                        <td>${sp.idSP}</td>
                        <td>${sp.ten}</td>
                        <td>${sp.soluongton}</td>
                        <td>${sp.gianhap}</td>
                        <td>${sp.giaban}</td>
                        <td>${sp.mota}</td>
                        <td><img src="/image/${sp.image}" width="100" height="100"/></td>


                        <td>
                            <a href="/product/detail/${sp.idSP}" class="btn btn-primary" role="button"
                               onclick="return confirm('Bạn có muốn xem chi tiết hay không ?')">Detail</a>

                            <a href="/product/delete/${sp.idSP}" class="btn btn-danger " role="button"
                               onclick="return confirm('Bạn có muốn xóa hay không ?')">Delete</a>

                                <%--                <a href="/delete/${sp.id}" class="btn btn-danger " role="button"--%>
                                <%--                   onclick="return confirm('Bạn có muốn Xem hay không')">Delete</a>--%>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <form>
                <div>
                    <ul class="pagination">
                        <li class="page-item">
                            <c:if test="${listSanPham.getNumber() + 1 > 1}">
                                <a class="page-link" href="?page=${listSanPham.getNumber()}">
                                    Previous
                                </a>
                            </c:if>
                        </li>
                        <li class="page-item"><a class="page-link"> ${listSanPham.getNumber() + 1}</a></li>
                        <li class="page-item"><a class="page-link">/</a></li>
                        <li class="page-item"><a class="page-link"> ${listSanPham.getTotalPages()}</a></li>
                        <li class="page-item"><c:if
                                test="${listSanPham.getNumber() + 1 lt listSanPham.getTotalPages()}">

                            <a class="page-link" href="?page=${listSanPham.getNumber() + 2}">
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
