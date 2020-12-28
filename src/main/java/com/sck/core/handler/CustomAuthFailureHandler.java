package com.sck.core.handler;

import com.sck.pkg.admin.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.*;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CustomAuthFailureHandler implements AuthenticationFailureHandler {

    @Autowired
    private AdminService adminService;

  /*  public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }*/

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        String errorMessage = null;
        String adminId = request.getParameter("adminId");

        if(exception instanceof BadCredentialsException || exception instanceof InternalAuthenticationServiceException){
            adminService.failCnt(adminId);
            errorMessage = "아이디 혹은 비밀번호가 다릅니다.";
        } else if (exception instanceof DisabledException) {
            errorMessage = "계정이 비활성화 되었습니다. \n관리자에게 문의해주십시오.";
        } else if (exception instanceof CredentialsExpiredException) {
            errorMessage = "비밀번호 유효기간이 만료되었습니다.\n관리자에게 문의해주십시오.";
        } else if (exception instanceof LockedException) {
            errorMessage = "로그인 5회 실패로 잠긴 계정입니다. \n관리자에게 문의해주십시오.";
        } else if (exception instanceof AccountExpiredException){
            errorMessage = "만료된 계정입니다. \n관리자에게 문의해주십시오.";
        } else {
            errorMessage = "알 수 없는 오류로 로그인에 실패했습니다.";
        }

        request.setAttribute("errorMessage", errorMessage);
        request.getRequestDispatcher("/login").forward(request, response);
    }
}
