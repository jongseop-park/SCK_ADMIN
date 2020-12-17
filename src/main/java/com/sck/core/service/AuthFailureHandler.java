package com.sck.core.service;

import org.springframework.security.authentication.*;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Service
public class AuthFailureHandler implements AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
        if (e instanceof AuthenticationServiceException) {
            request.setAttribute("loginFailMsg", "존재하지 않는 사용자입니다.");

        } else if(e instanceof BadCredentialsException) {
            request.setAttribute("loginFailMsg", "아이디 또는 비밀번호가 틀립니다.");

        } else if(e instanceof LockedException) {
            request.setAttribute("loginFailMsg", "잠긴 계정입니다..");

        } else if(e instanceof DisabledException) {
            request.setAttribute("loginFailMsg", "비활성화된 계정입니다..");

        } else if(e instanceof AccountExpiredException) {
            request.setAttribute("loginFailMsg", "만료된 계정입니다..");

        } else if(e instanceof CredentialsExpiredException) {
            request.setAttribute("loginFailMsg", "비밀번호가 만료되었습니다.");
        }

        // 로그인 페이지로 다시 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("/login?error");
        dispatcher.forward(request, response);
    }
}
