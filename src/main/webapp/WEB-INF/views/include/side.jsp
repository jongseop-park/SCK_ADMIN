<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand" href="/main">
                <img src="/static/img/brand/logo.png" class="navbar-brand-img" alt="LOGO">
            </a>
        </div>
        <div class="navbar-inner">
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
                <c:forEach var="item" items="${result}" varStatus="status">
                    <c:if test="${not empty item.parentSeq && item.useYn eq 'Y'}">
                        <c:if test="${empty item.menuUrl}">
                            <hr class="my-3">
                            <h6 class="navbar-heading p-0 text-muted">
                                <span class="docs-normal">${item.menuName}</span>
                            </h6>
                        </c:if>
                        <c:if test="${not empty item.menuUrl}">
                            <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="${item.menuUrl}">
                                    <i class="ni ni-bullet-list-67 text-default"></i>
                                    <span class="nav-link-text">${item.menuName}</span>
                                </a>
                            </li>
                            </ul>
                        </c:if>
                    </c:if>
                </c:forEach>
                <hr class="my-3">

                <%--<ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/menu">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">메뉴관리</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/authorityGrp/list?page=1&perPageNum=10&searchType=n&keyword=">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">권한관리</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/account/admin/list?page=1&perPageNum=10&searchType=n&keyword=">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">관리자 계정관리</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/account/member/list?page=1&perPageNum=10&searchType=n&keyword=">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">회원 계정관리</span>
                        </a>
                    </li>
                </ul>
                <hr class="my-3">
                <h6 class="navbar-heading p-0 text-muted">
                    <span class="docs-normal">구장</span>
                </h6>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/fieldMain/list?page=1&perPageNum=10&searchType=n&keyword=" onclick="location.href='/fieldMain/list?page=1&perPageNum=10&searchType=n&keyword='">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">메인구장 리스트</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/fieldSub/list?page=1&perPageNum=10&searchType=n&keyword=" onclick="location.href='/fieldSub/list?page=1&perPageNum=10&searchType=n&keyword='">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">서브구장 리스트</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/field/price">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">구장별 금액</span>
                        </a>
                    </li>
                </ul>
                <hr class="my-3">
                <h6 class="navbar-heading p-0 text-muted">
                    <span class="docs-normal">내 맘대로</span>
                </h6>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/room">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">채팅방</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/sample">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">테스트</span>
                        </a>
                    </li>
                </ul>--%>
            </div>
        </div>
    </div>
</nav>