<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand" href="/main">
                <img src="/static/img/brand/blue.png" class="navbar-brand-img" alt="...">
            </a>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
                <hr class="my-3">
                <h6 class="navbar-heading p-0 text-muted">
                    <span class="docs-normal">관리</span>
                </h6>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/menu">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">메뉴관리</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/master/member/list?page=1&perPageNum=10&searchType=n&keyword=">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">계정관리</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/authorityGrp/list?page=1&perPageNum=10&searchType=n&keyword=">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">권한관리</span>
                        </a>
                    </li>
                </ul>
                <hr class="my-3">
                <h6 class="navbar-heading p-0 text-muted">
                    <span class="docs-normal">구장</span>
                </h6>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/field/list?page=1&perPageNum=10&searchType=n&keyword=" onclick="location.href='/field/list?page=1&perPageNum=10&searchType=n&keyword='">
                            <i class="ni ni-bullet-list-67 text-default"></i>
                            <span class="nav-link-text">구장 리스트</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/fieldSub/list?page=1&perPageNum=10&searchType=n&keyword=" onclick="location.href='/field/list?page=1&perPageNum=10&searchType=n&keyword='">
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
                </ul>
                <!-- Divider -->
                <hr class="my-3">
                <!-- Heading -->
            </div>
        </div>
    </div>
</nav>