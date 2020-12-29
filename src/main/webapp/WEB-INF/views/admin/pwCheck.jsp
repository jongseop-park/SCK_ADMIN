<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <!-- style css -->
    <link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>

<body class="bg-default">
<!-- Side -->
<%@ include file="/WEB-INF/views/include/side.jsp" %>
<!-- /Side -->
<div class="main-content">
    <!-- Top -->
    <%@include file="/WEB-INF/views/include/top.jsp" %>
    <!-- /Top -->
    <!-- Header -->
    <div class="header bg-primary py-7 py-lg-8 pt-lg-9"></div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7">
                <div class="card bg-secondary border-0 mb-0">
                    <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                            <large>회원정보확인</large>
                        </div>
                        <form role="form" method="post" action="/profile">
                            <%--                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                            <div class="form-group mb-3">
                                <div class="input-group input-group-merge input-group-alternative" >
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" style="background-color: #e9ecef;"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" readonly placeholder="아이디" type="text" name="adminId" value="<%=username%>"> <%-- admin--%>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="패스워드" type="password" name="adminPw"/> <%--admin--%>
                                </div>
                            </div>
                            <div class="form-group" style="text-align: center; margin-top: 50px; height: 50px;">
                                <c:if test="${checkResult eq 'false'}">
                                <p style="white-space: pre-line;" id="errorMsg">로그인에 실패하였습니다.<br/>비밀번호를 확인해주세요.</p>
                                </c:if>
                            </div>
                            <div class="custom-control custom-control-alternative custom-checkbox">
                                <input class="custom-control-input" id=" customCheckLogin" type="checkbox">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary my-1" id="loginBtn">확인</button>
                                <button type="button" class="btn btn-primary my-1" id="cancelBtn">취소</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<!-- Argon Scripts -->
<!-- Core -->
<script src="/static/vendor/jquery/dist/jquery.min.js"></script>
<script src="/static/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/static/vendor/js-cookie/js.cookie.js"></script>
<script src="/static/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="/static/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
<!-- Argon JS -->
<script src="/static/js/argon.js"></script>
<!-- common JS -->
<script src="/static/js/common.js"></script>
<script type="text/javascript">
    $(function () {
        var $loginBtn = $("#loginBtn");
        var $cancelBtn = $("#cancelBtn");

        console.log("1");
        $cancelBtn.on("click",function (){
            location.href = "/main";
        });
    });
</script>