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
                        <h6 class="h2 text-white d-inline-block mb-0">구장</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                                <li class="breadcrumb-item"><a href="/fieldMain/list?page=1&perPageNum=10&searchType=전체보기&keyword=">서브구장 리스트</a></li>
                                <c:if test="${isUpdate eq true}">
                                    <li class="breadcrumb-item">상세</li>
                                </c:if>
                                <c:if test="${isUpdate eq false}">
                                    <li class="breadcrumb-item">등록</li>
                                </c:if>
                            </ol>
                        </nav>
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
                            <div class="col-8">
                                <c:if test="${isUpdate eq false}">
                                    <h2 class="mb-0" style="color: white;">구장 등록</h2>
                                </c:if>
                                <c:if test="${isUpdate eq true}">
                                    <h2 class="mb-0" style="color: white;">구장 상세</h2>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <!-- 입력 폼 -->
                    <div class="col-lg-10">
                        <%--<c:forEach var="result" items="${result}" varStatus="status">--%>
                        <div class="card">
                            <div class="card-body">
                                <form id="form">
                                    <input type="hidden" id="seq" value="${result.seq}"/>
                                    <div class="pl-lg-4">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="fieldMainNm">메인구장명</label>
                                                    <input type="text" id="fieldMainNm" class="form-control" placeholder="메인구장명" value="${result.fieldMainNm}" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="fieldAddress">주소</label>
                                                    <input type="text" id="fieldAddress" class="form-control" placeholder="주소" value="${result.fieldAddress}">
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label class="form-control-label" for="fieldTel">연락처</label>
                                                    <input type="text" id="fieldTel" class="form-control" placeholder="연락처" value="${result.fieldTel}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pl-lg-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="fieldRefund">환불규정</label>
                                            <textarea rows="4" class="form-control" id="fieldRefund" placeholder="환불규정">${result.fieldRefund}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-5 text-right" style="float: right">
                                        <c:if test="${isUpdate eq false}">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnSave" value="등록">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnCancel" value="취소">
                                        </c:if>
                                        <c:if test="${isUpdate eq true}">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnUpdate" value="수정">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnDelete" value="삭제">
                                        </c:if>
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
        var $form = $('#form');
        var $btnSave = $('#btnSave'); // 저장
        var $btnUpdate = $('#btnUpdate'); // 수정
        var $btnDelete = $('#btnDelete'); // 삭제
        var $btnCancle = $('#btnCancel'); // 취소

        var $seq = $('#seq');
        var $fieldMainNm = $('#fieldMainNm'); // 구장
        var $fieldAddress = $('#fieldAddress'); // 주소
        var $fieldTel = $('#fieldTel'); // 연락처
        var $fieldRefund = $('#fieldRefund'); // 환불규정
        var isUpdate = "${isUpdate}";

        // 저장
        $btnSave.on("click",function(){
            if(fieldCnt > 0){
            Save(fieldData());
            } else {
                alert("구장의 개수는 최소 1개 이상이어야 합니다.");
            }

        });
        // 수정
        $btnUpdate.on("click",function(){
            Save(fieldData());
        });
        // 삭제(DEL_YN = 'Y')
        $btnDelete.on("click",function(){
            var object = {
                "seq" : $seq.val()
            };
            Delete(object);
        });
        // 취소
        $btnCancle.on("click",function(){
            window.history.back();
        });


        function fieldData(){

            var data = {
                "fieldMainNm" : $fieldMainNm.val(),
                "fieldAddress" : $fieldAddress.val(),
                "fieldTel" : $fieldTel.val(),
                "fieldRefund" : $fieldRefund.val()
            };
            if($seq.val() != ''){
                data["seq"] = $seq.val();
            }
            if(isUpdate == 'false'){
                data["regId"] = "<%=username%>";
            } else if(isUpdate == 'true'){
                data["modId"] = "<%=username%>";
            }

            return data;
        }

        function Save(object) {
            $.ajax({
                url : "/fieldMain/save",
                type : "POST",
                contentType : "application/json", // 명시하지 않으면 application/x-www-form-urlencoded; charset=UTF-8로 지정
                processData : false, // 파일전송 시 사용. query string 설정
                data : JSON.stringify(object),
                success : function () {
                    if(${isUpdate eq false}){
                        alert("등록이 완료되었습니다.");
                    } else {
                        alert("수정이 완료되었습니다.");
                    }
                    location.href = document.referrer; //뒤로가기 후 새로고침
                }, error: function (jqxhr){
                    alert("정상적인 작동이 아닙니다. 이전 페이지로 돌아갑니다.");
                    location.href = document.referrer;
                }
            });
        }

        function Delete(object) {
            $.ajax({
                url : "/fieldMain/delete",
                type : "POST",
                contentType: "application/json",
                data : JSON.stringify(object),
                success : function(){
                    alert("삭제가 완료되었습니다.");
                    location.href = document.referrer;
                }, error(jqxhr){
                    alert("정상적인 작동이 아닙니다. 이전 페이지로 돌아갑니다.");
                    location.href = document.referrer;
                }
            });
        }

    });
</script>