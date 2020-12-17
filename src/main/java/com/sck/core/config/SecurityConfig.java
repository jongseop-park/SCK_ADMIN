package com.sck.core.config;

import com.sck.pkg.admin.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@EnableWebSecurity // security 설정 클래스로 정의
@Configuration // bean 등록
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    AdminService adminService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() { // 해시 알고리즘을 이용해 입력받은 데이터를 암호화
        return new BCryptPasswordEncoder();
    }

    /* 데이터베이스 인증용 provider(공급자) */
    @Bean
    public DaoAuthenticationProvider authenticationProvider(AdminService adminService) {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(adminService); // UserDetails를 리턴 loadUserByUsername()
        authenticationProvider.setPasswordEncoder(passwordEncoder()); // 패스워드 암호화
        return authenticationProvider;
    }

    /* 사용자를 인증하는 방법이 담긴 객체 */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider(adminService));
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                // 페이지 권한 설정
                .antMatchers("/save").permitAll()
                .antMatchers("/signUp").permitAll()
                .antMatchers("/master/**").hasRole("MASTER")
                .antMatchers("/account/**").hasRole("MASTER")
                .antMatchers("/**").hasRole("ADMIN")
//                .antMatchers("/**").permitAll()
                .anyRequest().authenticated()
                .and()// 로그인 설정
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/main", true)
                .usernameParameter("adminId")
                .passwordParameter("adminPw")
                .permitAll()
                .and()
                .exceptionHandling().accessDeniedPage("/403") // 권한이 없는 사용자가 리소스 접근 시 /error403 리다이렉션
                .and() // 로그아웃 설정
                .logout()
                .logoutUrl("/logout")  // 로그아웃 Url
                .logoutSuccessUrl("/login") // 로그아웃 성공 시 리다이렉션
                .invalidateHttpSession(true) // 세션 무효화
                .deleteCookies("JSESSIONID") // 특정 쿠키 삭제
                .clearAuthentication(true) // 인증정보 삭제
                .and()
                .csrf().disable();
    }
}


