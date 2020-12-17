<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>SCK Admin</title>
    <!-- Favicon -->
    <link rel="icon" href="/static/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="/static/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="/static/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
    <!-- Argon CSS -->
    <link rel="stylesheet" href="/static/css/argon.css?v=1.2.0" type="text/css">
</head>

<body class="bg-default">
<!-- Main content -->
<div class="main-content">
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8 pt-lg-9"></div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7">
                <div class="card bg-secondary border-0 mb-0">
                    <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                            <large>SCK Admin</large>
                        </div>
                        <form role="form" method="post">
                            <div class="form-group mb-3">
                                <div class="input-group input-group-merge input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="아이디" type="text" name="adminId" value="admin">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="패스워드" type="password" name="adminPw" value="admin">
                                </div>
                            </div>
                            <div class="form-group" style="text-align: center; margin-top: 50px; height: 50px;">

                                    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                                        <p class="error" >아이디, 혹은 비밀번호가 올바르지 않습니다.</p>
                                        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
                                    </c:if>
                            </div>
                            <div class="custom-control custom-control-alternative custom-checkbox">
                                <input class="custom-control-input" id=" customCheckLogin" type="checkbox">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary my-1" id="loginBtn">로그인</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-6">
                    </div>
                    <div class="col-6 text-right">
                        <a href="/signUp" class="text-light"><small>계정생성</small></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<footer class="py-9" id="footer-main">
    <div class="container">
        <div class="row align-items-center justify-content-xl-between">
            <div class="col-xl-6">
                <div class="copyright text-center text-xl-left text-muted">
                    &copy; 2020 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
                </div>
            </div>
            <div class="col-xl-6">
                <ul class="nav nav-footer justify-content-center justify-content-xl-end">
                    <li class="nav-item">
                        <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
                    </li>
                    <li class="nav-item">
                        <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Argon Scripts -->
<!-- Core -->
<script src="/static/vendor/jquery/dist/jquery.min.js"></script>
<script src="/static/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/static/vendor/js-cookie/js.cookie.js"></script>
<script src="/static/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="/static/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
<!-- Argon JS -->
<script src="/static/js/argon.js?v=1.2.0"></script>
</body>

</html>
<script type="text/javascript">
    $(function () {
        // $("#loginBtn").trigger("click");
    })
</script>