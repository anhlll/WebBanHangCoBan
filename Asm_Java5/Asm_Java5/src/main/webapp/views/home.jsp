<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/18/2023
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title> </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Link Angularjs -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../../../resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="../../../resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../../../resources/css/style.css" rel="stylesheet">

</head>

<body>

<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row bg-secondary py-1 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center h-100">
                <a class="text-body mr-3" href="">About</a>
                <a class="text-body mr-3" href="">Contact</a>
                <a class="text-body mr-3" href="">Help</a>
                <a class="text-body mr-3" href="">FAQs</a>
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">My
                        Account
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="/loginView" class="dropdown-item" type="button">Sign in</a>
                        <a href="/sign-up-view" class="dropdown-item" type="button">Sign up</a>
                    </div>
                </div>
                <div class="btn-group mx-2">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle"
                            data-toggle="dropdown">USD
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">English</button>
                        <button class="dropdown-item" type="button">VietNam</button>

<%--    <ul class="navbar-nav mr-auto">--%>
<%--        <li class="nav-item active">--%>
<%--            <a class="nav-link" href="#"><s:message code="label.home.home"/><span class="sr-only">(current)</span></a>--%>
<%--        </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="#"><s:message code="label.home.product"/></a>--%>
<%--            </li>--%>
<%--        <li class="nav-item dropdown">--%>
<%--            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                <s:message code="label.home.shop"/>--%>
<%--            </a>--%>
<%--            <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                <a class="dropdown-item" href="#"><s:message code="label.home.about"/></a>--%>
<%--                <a class="dropdown-item" href="#">Another action</a>--%>
<%--                <div class="dropdown-divider"></div>--%>
<%--                <a class="dropdown-item" href="#">Something else here</a>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link disabled" href="#">Disabled</a>--%>
<%--        </li>--%>
<%--    </ul>--%>
                    </div>
                </div>
            </div>
            <div class="d-inline-flex align-items-center d-block d-lg-none">
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-heart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle"
                          style="padding-bottom: 2px;">0</span>
                </a>
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-shopping-cart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle"
                          style="padding-bottom: 2px;">0</span>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4">
            <a href=""><img src="../../../resources/img/logoShop.jpg" alt=""></a>
        </div>
        <div class="col-lg-4 col-6 text-left">
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Shirt Name">
                    <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i type="submit" class="fa fa-search"></i>
                            </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-4 col-6 text-right">
            <p class="m-0">Customer Service</p>
            <h5 class="m-0">+012 345 6789</h5>
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Navbar Start -->
<div class="container-fluid bg-dark mb-30">
    <div class="row px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-light w-100" data-toggle="collapse"
               href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <h6 class="text-dark m-0"><i class="fa mr-2 text-center"></i>ANTIQUE SHOP</h6>
                <%--                <i class="fa fa-angle-down text-dark"></i>--%>
            </a>
<%--            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"--%>
<%--                 id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">--%>
<%--                <div class="navbar-nav w-100">--%>
<%--&lt;%&ndash;                    <a href="" class="nav-item nav-link">Airpod</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="" class="nav-item nav-link">SamSung</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="" class="nav-item nav-link">RedMi</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="" class="nav-item nav-link">Opppo</a>&ndash;%&gt;--%>
<%--                </div>--%>
<%--            </nav>--%>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                    <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="/home" class="nav-item nav-link active">Home</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i
                                    class="fa fa-angle-down mt-1"></i></a>
                            <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                <a href="/cart/${US.id}" class="dropdown-item">Giỏ hàng</a>
                                <a href="/hoa-don/${US.id}" class="dropdown-item">Hóa Đơn</a>
                                <a href="/home" class="dropdown-item">Đăng xuất</a>
                            </div>
                        </div>
                        <!-- <a href="contact.jsp" class="nav-item nav-link">Contact</a> -->
                    </div>
<%--                    <ul class="nav navbar-nav navbar-right">--%>
<%--                        <li><a href="?lang=vi">Tiếng Việt</a></li>--%>
<%--                        <li><a href="?lang=en">English</a></li>--%>
<%--                    </ul>--%>
                    <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                        <a href="" class="btn px-0">
                            <i class="fas fa-heart text-primary"></i>
                            <span class="badge text-secondary border border-secondary rounded-circle"
                                  style="padding-bottom: 2px;">0</span>
                        </a>
                        <a href="" class="btn px-0 ml-3">
                            <i class="fas fa-shopping-cart text-primary"></i>
                            <span class="badge text-secondary border border-secondary rounded-circle"
                                  style="padding-bottom: 2px;">0</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Navbar End -->

<!-- Carousel Start -->
<div class="container-fluid mb-3">
    <div class="row px-xl-5">
        <div class="col-lg-8">
            <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#header-carousel" data-slide-to="1"></li>
                    <li data-target="#header-carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item position-relative active" style="height: 430px;">
                        <img
                             src="../../../resources/img/ao1.jpg"
                             style="object-fit: cover;">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
                                   href="#">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item position-relative" style="height: 430px;">
                        <img
                             src="../../../resources/img/ao.jpg"
                             style="object-fit: cover;">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">

                        </div>
                    </div>
                    <div class="carousel-item position-relative" style="height: 430px;">
                        <img
                             src="../../../resources/img/ao2.jpg"
                             style="object-fit: cover;">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="product-offer mb-30" style="height: 200px;">
                <img class="img-fluid" src="../../../resources/img/ao.jpg" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Save 20%</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                    <a href="" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
            <div class="product-offer mb-30" style="height: 200px;">
                <img class="img-fluid" src="../../../resources/img/ao1.jpg" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Save 20%</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                    <a href="" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->

<!-- Offer Start -->
<div class="container-fluid pt-5 pb-3">
    <div class="row px-xl-5">
        <div class="col-md-6">
            <div class="product-offer mb-30" style="height: 300px;">
                <img class="img-fluid" src="../../../resources/img/ao2.jpg" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Save 20%</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                    <a href="" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-offer mb-30" style="height: 300px;">
                <img class="img-fluid" src="../../../resources/img/ao1.jpg" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Save 20%</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                    <a href="" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Offer End -->

<%--    ListTaiNghe start--%>
<div>
    <table>
<%--        <form action="/ASM/quan-ly-tai-nghe/search">--%>
<%--            <div class="input-group">--%>
<%--                <input type="search" name="giaMin" class="form-control rounded" placeholder="Gia Min"--%>
<%--                       aria-label="Search"--%>
<%--                       aria-describedby="search-addon" value="${param.giaMin}"/>--%>
<%--                <input type="search" name="giaMax" class="form-control rounded" placeholder="Gia Max"--%>
<%--                       aria-label="Search"--%>
<%--                       aria-describedby="search-addon" value="${param.giaMax}"/>--%>
<%--                <button type="submit" class="btn btn-outline-primary">Search</button>--%>
<%--            </div>--%>
<%--            <br/>--%>
<%--        </form>--%>
<%--        <br/><br/>--%>
<%--        <c:if test="${page.isEmpty()}">--%>
<%--        <h2>Not found any records!!!</h2>--%>
<%--        </c:if><br/>--%>
<%--        <c:if test="${not page.isEmpty()}">--%>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Ten </th>
                <th>So luong ton</th>
                <th>Anh</th>
                <th>Gia Nhap</th>
                <th>Gia Ban</th>
                <th>Mo Ta</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${page.getContent()}" var="sp">
                <tr>
                    <td>${sp.idSP}</td>
                    <td>${sp.ten}</td>
                    <td>${sp.soluongton}</td>
                    <td><img src="/image/${sp.image}" width="100" height="100" /></td>
                    <td>${sp.gianhap}</td>
                    <td>${sp.giaban}</td>
                    <td>${sp.mota}</td>
                    <td>
                        <a href="/loginView" class="btn btn-danger">Buy now</a>
                        <a href="/loginView" class="btn btn-primary">Add to cart</a>
                        <a href="/product/detail_product_client/${sp.idSP}" class="btn btn-success">Detail</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
<%--        <center>--%>
<%--            <nav aria-label="Page navigation example">--%>
<%--                <ul class="pagination">--%>
<%--                    <c:forEach begin="0" end="${ page.totalPages -1}" varStatus="loop">--%>
<%--                        <li class="page-item">--%>
<%--                            <a class="page-link" href="/home?page=${loop.begin + loop.count - 1}">--%>
<%--                                    ${loop.begin + loop.count }--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </c:forEach>--%>
<%--                </ul>--%>
<%--            </nav>--%>
<%--        </center>--%>
    <form>
        <div>
            <ul class="pagination">
                <li class="page-item">
                    <c:if test="${page.getNumber() + 1 > 1}">
                        <a class="page-link" href="?page=${page.getNumber()}">
                            Previous
                        </a>
                    </c:if>
                </li>
                <li class="page-item"><a class="page-link"> ${page.getNumber() + 1}</a></li>
                <li class="page-item"><a class="page-link">/</a></li>
                <li class="page-item"><a class="page-link"> ${page.getTotalPages()}</a></li>
                <li class="page-item"><c:if test="${page.getNumber() + 1 lt page.getTotalPages()}">
                    <a class="page-link" href="?page=${page.getNumber() + 2}">
                        Next
                    </a>
                </c:if>
                </li>
            </ul>
        </div>
    </form>
</div>
<%--    ListTaiNghe end--%>

<!-- Footer Start -->
<div class="container-fluid bg-dark text-secondary mt-5 pt-5">
    <div class="row px-xl-5 pt-5">
        <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
            <h5 class="text-secondary text-uppercase mb-4">Liên Lạc</h5>

            <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Hà Nội</p>
            <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>abc@gmail.com</p>
            <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
        </div>
        <div class="col-lg-8 col-md-12">
            <div class="row">
                <div class="col-md-4 mb-5">
                    <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                        <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                        <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shop
                            Detail</a>
                        <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shopping
                            Cart</a>
                        <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                        <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <h5 class="text-secondary text-uppercase mb-4">My Account</h5>
                </div>
                <div class="col-md-4 mb-5">
                    <h5 class="text-secondary text-uppercase mb-4">Bản Tin</h5>
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Your Email Address">
                            <div class="input-group-append">
                                <button class="btn btn-primary">Sign Up</button>
                            </div>
                        </div>
                    </form>
                    <h6 class="text-secondary text-uppercase mt-4 mb-3">Follow Us</h6>
                    <div class="d-flex">
                        <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- test js -->
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="../../../resources/lib/easing/easing.min.js"></script>
<script src="../../../resources/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="../../../resources/mail/jqBootstrapValidation.min.js"></script>
<script src="../../../resources/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="../../../resources/js/main.js"></script>

</body>

</html>
