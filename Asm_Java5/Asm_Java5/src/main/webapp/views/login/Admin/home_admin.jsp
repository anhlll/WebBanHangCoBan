<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 6/9/2023
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header_admin.jsp"></jsp:include>
<br>
<br><br><br><br>
<div class="container-fluid">


    <div class="row">
        <div class="col-3 bg-light">
            <jsp:include page="aside_admin.jsp"/>
        </div>
        <div class="col-9">
            <div class="card p-3">
                <div class="jumbotron">
                    <h1 class="display-4 text-center">Chào mừng đến với trang quản trị</h1>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer_admin.jsp"></jsp:include>


</body>
</html>
