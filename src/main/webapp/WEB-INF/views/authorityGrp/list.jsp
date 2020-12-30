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
</head>

<body>
<!-- Side -->
<c:import url="/side"/>
<!-- /Side -->
<div class="main-content" id="panel">
    <!-- Top -->
    <%@include file="/WEB-INF/views/include/top.jsp"%>
    <!-- /Top -->
    <!-- 10 -->
    <div class="header bg-primary pb-6">
        <div class="container-fluid">
            <div class="header-body">
                <div class="row align-items-center py-4">
                    <div class="col-lg-6 col-7">
                        <h6 class="h2 text-white d-inline-block mb-0">구장</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                                <li class="breadcrumb-item"><a href="/authorityGrp/list">권한관리</a></li>
                            </ol>
                        </nav>
                    </div>
                    <div class="col-lg-6 col-5 text-right">
                        <a href="/authorityGrp/form" class="btn btn-lg btn-neutral">등록하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Header -->
    <!-- Page content -->
    <div class="container-fluid mt--6">
        <div class="row">
            <div class="col">
                <div class="card">
                    <!-- Card header -->
                    <div class="card-header bg-dark">
                        <h2 class="mb-0" style="display: inline; color:white;">리스트</h2>
                        <form class="navbar-search navbar-search-light form-inline mr-sm-3" id="navbar-search-main" style="float: right" method="get">
                            <select class="custom-select mr-sm-3" style="color: black;" id="searchSelect" name="searchType">
                                <option value="n" <c:out value="${conn.searchType == null ? 'selected' : ''}"/>>전체보기</option>
                                <option value="tw" <c:out value="${conn.searchType == 'tw' ? 'selected' : ''}"/>>제목/관리자</option>
                                <option value="t" <c:out value="${conn.searchType == 't' ? 'selected' : ''}"/>>제목</option>
                                <option value="w" <c:out value="${conn.searchType == 'w' ? 'selected' : ''}"/>>관리자</option>
                            </select>
                            <div class="form-group mb-0">
                                <div class="input-group input-group-alternative input-group-merge">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-search"></i></span>
                                    </div>
                                    <input class="form-control" type="text" id="search" name="keyword" value="${conn.keyword}">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Light table -->
                    <div class="table-responsive">
                        <table class="table align-items-center table-flush list-table-hover">
                            <thead class="thead-light">
                            <tr>
                                <th scope="col" class="sort" >No</th>
                                <th scope="col" class="sort" >권한코드</th>
                                <th scope="col" class="sort" >권한명</th>
                                <th scope="col" class="sort" >관리자</th>
                                <th scope="col" class="sort" >등록일</th>
                            </tr>
                            </thead>
                            <tbody class="list">
                            <c:if test="${empty result}">
                                <tr style="text-align: center;">
                                    <th scope="row" colspan="5">
                                        <span class="name mb-0 text-sm">0 개의 게시물이 있습니다.</span>
                                    </th>
                                </tr>
                            </c:if>
                            <c:forEach var="list" items="${result}" varStatus="status">

                                <tr onclick="location.href='/authorityGrp/form?seq=${list.seq}'" style="cursor: pointer;">
                                    <th scope="row">
                                        <span class="name mb-0 text-sm">${list.seq}</span>
                                    </th>
                                    <th scope="row">
                                        <span class="name mb-0 text-sm">${list.authCode}</span>
                                    </th>
                                    <th scope="row">
                                        <span class="name mb-0 text-sm">${list.authName}</span>
                                    </th>
                                    <th scope="row">
                                        <span class="name mb-0 text-sm">
                                            <c:choose>
                                                <c:when test="${empty list.modId}">${list.regId}</c:when>
                                                <c:otherwise>${list.modId}</c:otherwise>
                                            </c:choose>
                                        </span>
                                    </th>
                                    <th scope="row">
                                        <span class="name mb-0 text-sm">
                                            <c:choose>
                                                <c:when test="${empty list.modDate}">${list.regDate}</c:when>
                                                <c:otherwise>${list.modDate}</c:otherwise>
                                            </c:choose>
                                        </span>
                                    </th>
                                </tr>
                            </c:forEach>
                            <tr onclick="location.href='/authorityGrp/form'" style="cursor: pointer;">
                                <%--<tr>
                                <th scope="row">
                                    <span class="name mb-4 text-sm">데이터가 존재하지 않습니다.</span>
                                </th>
                            </tr>--%>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- Page -->
                    <input type="hidden" id="CurrentPage" value="${paging.criteria.page}"/>
                    <div class="card-footer py-4">
                        <nav aria-label="...">
                            <ul class="pagination justify-content-center mb-0">
                                <c:if test="${paging.prev}">
                                    <li class="page-item">
                                        <a class="page-link" href="/authorityGrp/list${paging.makeSearch(paging.startPage - 1)}" tabindex="-1">
                                            <i class="fas fa-angle-left"></i>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="idx">
                                    <c:if test="${idx ne 0}">
                                    <li class="page-item" id="page${idx}">
                                        <a class="page-link" href="/authorityGrp/list${paging.makeSearch(idx)}">${idx}</a>
                                    </li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${paging.next && paging.endPage > 0}">
                                    <li class="page-item">
                                        <a class="page-link" href="/authorityGrp/list${paging.makeSearch(paging.endPage+1)}">
                                            <i class="fas fa-angle-right"></i>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/include/footer.jsp"%>
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
<script src="/static/js/argon.js?v=1.2.0"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $CurrentPage = $('#CurrentPage').val();
        $('#page'+$CurrentPage).addClass('active');

        if($("select option:selected").val() == 'n'){
            $("#search").attr("placeholder",$("select option:selected").text());
            $("#search").val('');
        } else {
            $("#search").attr("placeholder",$("select option:selected").text() + ' 검색');
        }
    });

    $(function () {

        // 검색 select
        $("#searchSelect").on("change",function(){
            $("#search").val('');
            if($(this).val() == 'n') {
                $("#search").attr("placeholder", "전체보기");
            } else if($(this).val() == 'tw'){
                $("#search").attr("placeholder", "제목/작성자 검색");
            } else if($(this).val() == 't'){
                $("#search").attr("placeholder", "제목 검색");
            } else {
                $("#search").attr("placeholder", "관리자 검색");
            }
        });

        $("#search").on("keydown",function (evt) {
            if(evt.keyCode == 13){
                self.location = location();
            }
        })

        function location() {
            var loc = "authorityGrp/list"
                + '${pageMaker.makeQuery(1)}'
                + "&searchType="
                + $("select option:selected").val()
                + "&keyword="
                + encodeURIComponent($("#search").val());

            return loc;
        }
    });
</script>
