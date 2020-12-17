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
<div class="main-content">
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8 pt-lg-9"></div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
        <!-- Table -->
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="card bg-secondary border-0">
                    <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                            <small>회원가입</small>
                        </div>
                        <form id="form" role="form" action="/save" method="post" accept-charset="utf-8">
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="아이디" type="text" id="id" name="adminId">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="패스워드" type="password" id="pw" name="adminPw">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="성함" type="text" id="name" name="adminNm">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="이메일" type="email" id="email" name="adminEmail">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                    </div>
                                    <input class="form-control" placeholder="연락처" type="text" id="tel" name="adminTel">
                                </div>
                            </div>
                            <div class="text-muted font-italic"><small>패스워드 보안: <span class="text-gray font-weight-700" id="safety">없음</span></small></div>
                            <div class="row my-4">
                                <div class="col-12">
                                    <div class="custom-control custom-control-alternative custom-checkbox">
                                        <input class="custom-control-input" id="agree" type="checkbox">
                                        <label class="custom-control-label" for="agree">
                                            <span class="text-muted">계정 정보보호 정책에 <a href="#">동의합니다.</a></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="button" id="submit" class="btn btn-primary mt-4">계정생성</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-6">
                    </div>
                    <div class="col-6 text-right">
                        <a href="/login" class="text-light"><small>돌아가기</small></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<footer class="py-5" id="footer-main">
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
        $form = $("#form"); //폼
        $id = $form.find("#id"); //아이디
        $pw = $form.find("#pw"); //패스워드
        $name = $form.find("#name"); //성함
        $email = $form.find("#email"); //이메일
        $tel = $form.find("#tel"); //연락처
        $safety = $form.find("#safety"); //패스워드 보안
        $agree = $form.find("#agree"); //계정 정보보호 동의
        $submit = $form.find("#submit"); //폼 서브밋

        $pw.on("keyup",function () {
            var length = $(this).val().length;
            console.log(length);
            $safety.removeClass("text-gray"); // 없음
            $safety.removeClass("text-red"); // 약함
            $safety.removeClass("text-success"); // 강함
           console.log($(this).val().length);
           if(length == 0){
               $safety.text("없음");
               $safety.addClass("text-gray");
           } else if (length <= 10){
               $safety.text("약함");
               $safety.addClass("text-red");
           } else if (length > 10) {
               $safety.text("강함");
               $safety.addClass("text-success");
           }
        });

        $submit.on("click",function (e) {
            var agreeCheck = $agree.is(":checked");
            var data = {
                "adminId" : $id.val(),
                "adminPw" : $pw.val(),
                "adminNm" : $name.val(),
                "adminEmail" : $email.val(),
                "adminTel" : $tel.val()
            }

            if(agreeCheck == false) {
                alert("계정 정보보호 정책에 동의하셔야 합니다.");
           } else if(agreeCheck == true){
                $.ajax({
                    url : "/save",
                    type : "POST",
                    contentType : "application/json",
                    data : JSON.stringify(data),
                    success : function () {
                        alert("회원가입이 완료되었습니다.");
                        window.location.href = "/";
                    }, error : function (jqxhr) {
                        alert("회원가입에 실패하였습니다. 입력정보를 확인하세요.");
                    }
                });
            }

        });

    });
</script>