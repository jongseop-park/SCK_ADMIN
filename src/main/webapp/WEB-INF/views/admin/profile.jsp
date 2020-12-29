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

<body>
<!-- Side -->
<%@ include file="/WEB-INF/views/include/side.jsp" %>
<!-- /Side -->
<div class="main-content" id="panel">
    <!-- Top -->
    <%@include file="/WEB-INF/views/include/top.jsp" %>
    <!-- /Top -->
    <!-- Header -->
    <div class="header bg-primary pb-6">
        <div class="container-fluid">
            <div class="header-body">
                <div class="row align-items-center py-4">
                    <div class="col-lg-6 col-7">
                        <h6 class="h2 text-white d-inline-block mb-0">프로필</h6>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header -->
    <!-- Page content -->
    <div class="container-fluid mt--6">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header bg-dark">
                        <div class="row align-items-center">
                        </div>
                    </div>
                    <!-- 입력 폼 -->
                    <div class="col-lg-10">
                        <%--<c:forEach var="result" items="${result}" varStatus="status">--%>
                        <div class="card">
                            <div class="card-body">
                                <form id="form">
                                    <input type="hidden" id="seq" value="${result.seq}"/>
                                    <input type="hidden" id="adminId" value="${result.adminId}">
                                    <div class="pl-lg-4">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="adminNm">성명</label>
                                                    <input type="text" id="adminNm" class="form-control required" placeholder="성명" value="${result.adminNm}" maxlength="15">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="adminEmail">이메일</label>
                                                    <input type="email" id="adminEmail" class="form-control required" placeholder="이메일(@)" value="${result.adminEmail}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="adminTel">연락처</label>
                                                    <input type="text" id="adminTel" class="form-control required" placeholder="(-) 없이 입력" value="${result.adminTel}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="newPassword">새 비밀번호</label>
                                                    <input type="password" id="newPassword" class="form-control required" placeholder="새 비밀번호" maxlength="11">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="newPasswordCheck">새 비밀번호 확인</label>
                                                    <input type="password" id="newPasswordCheck"  class="form-control required" placeholder="새 비밀번호 확인">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-5 text-right" style="float: right">
                                        <input type="button" class="btn btn-lg btn-neutral" id="btnUpdate" value="수정">
                                        <input type="button" class="btn btn-lg btn-neutral" id="btnCancel" value="취소">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <%--</c:forEach>--%>
                    </div>
                    <!-- /입력 폼 -->
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <!-- /Footer -->
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
        var $btnUpdate = $("#btnUpdate"); // 수정 버튼
        var $btnCancel = $("#btnCancel"); // 취소 버튼
        var $adminId = $("#adminId"); // 아이디
        var $adminNm = $("#adminNm"); // 성명
        var $adminEmail = $("#adminEmail"); // 이메일
        var $adminTel = $("#adminTel"); // 연락처
        var $newPassword = $("#newPassword"); // 새 비밀번호
        var $newPasswordCheck = $("#newPasswordCheck"); // 새 비밀번호 확인
        var $required = $(".required"); // 유효성 검사 클래스

        $btnUpdate.on("click",function () {
            required();
        });

        $btnCancel.on("click",function(){
            location.href = "/main";
            /*if(document.referrer){ // 뒤로갈 페이지가 있으면

                history.go(-3);
            }
           else { // 없으면 메인으로 이동
               location.href = "/main";
            }*/
        });

        function required(){
            var result = true;

            $.each($required,function (index, object){ // object > DOM Object 이므로 $(this)를 사용하여 값 호출

                var id = $(this).attr("id");
                var value = $(this).val();

                if(value === ""){
                    $(this).focus();
                    alert("["+$(this).prev().text()+"]을(를) 확인하세요.");
                    result = false;
                    return false;
                } else if (id === "newPasswordCheck"){
                    if($newPassword.val() !== $newPasswordCheck.val()){
                        alert("비밀번호가 서로 다릅니다.");
                        result = false;
                        return false;
                    }
                }
            });

            if(result === true){
                if(saveConfirm() === true){
                    update();
                }
            }
        }

        function update() {
            var data = {
                "adminId" : $adminId.val(),
                "adminNm" : $adminNm.val(),
                "adminEmail" : $adminEmail.val(),
                "adminTel" : $adminTel.val(),
                "adminPw" : $newPassword.val()
            }
            $.ajax({
                url : "/profile/save",
                type : "POST",
                contentType : "application/json",
                data : JSON.stringify(data),
                success : function () {
                    alert("수정이 완료되었습니다.");
                    location.href = "/pwCheck";
                }, error : function (jqxhr){
                    alert("작업이 실패했습니다.");
                }
            });
        }

        function saveConfirm() {
            var msg = confirm("프로필을 수정하시겠습니까?");

            if(msg === true){
                return msg;
            } else if (msg === false){
                return msg;
            }
        }
    });
</script>