<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.GrantedAuthority" %>
<%@ page import="java.util.Collection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    UserDetails userDetails = (UserDetails)principal;
    String username = userDetails.getUsername();
    Collection<? extends GrantedAuthority> role = userDetails.getAuthorities();
%>
<nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Navbar links -->
            <ul class="navbar-nav align-items-center  ml-md-auto "></ul>
            <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                <li class="nav-item dropdown">
                    <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="user">
                        <div class="media align-items-center">
                  <%--<span class="avatar avatar-sm rounded-circle">
                    <img alt="Image placeholder" src="/static/img/theme/team-4.jpg">
                  </span>--%>
                            <div class="media-body  ml-2  d-none d-lg-block">
                                <span class="mb-0 text-sm  font-weight-bold"><%=username%>님<!-- 아이디 --></span>
                            </div>
                        </div>
                    </a>
                    <div class="dropdown-menu  dropdown-menu-right ">
                        <div class="dropdown-header noti-title">
                            <h6 class="text-overflow m-0">환영합니다!</h6>
                        </div>
                        <a href="#!" class="dropdown-item">
                            <i class="ni ni-single-02"></i>
                            <span>내 정보</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="/logout" class="dropdown-item">
                            <i class="ni ni-user-run"></i>
                            <span>로그아웃</span>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<script src="/static/vendor/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        if(window.console!=undefined){
            setTimeout(console.log.bind(console,"%cSCK","font:4em verdana;color:#009e3f;font-weight:bold"),0);
            setTimeout(console.log.bind(console,"%c 사이트 내용 무단 조작 또는 복제시 법적 처벌을 받으실 수 있습니다","font:1.4em sans-serif;color:#777;"),0);
        }
    });
</script>