package com.sck.admin.domain;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

//@SuppressWarnings()
public class AdminPrincipal implements UserDetails {

    private ArrayList<Admin> admin;

    public AdminPrincipal(ArrayList<Admin> adminAuthes){
        this.admin = adminAuthes;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities(){

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        for(int x=0; x<admin.size(); x++){
            authorities.add(new SimpleGrantedAuthority(admin.get(x).getAuthGrp().getAuthCode()));
        }

        return authorities;

    }
    @Override
    public String getUsername(){ // 관리자 아이디
        return admin.get(0).getAdminId();
    }
    @Override
    public String getPassword(){ // 관리자 패스워드;
        return admin.get(0).getAdminPw();
    }
    @Override
    public boolean isAccountNonExpired(){ // 아이디 만료여부
        return true;
    }
    @Override
    public boolean isAccountNonLocked(){ // 아이디 락여부
        return true;
    }
    @Override
    public boolean isCredentialsNonExpired(){ // 비밀번호 만료여부
        return true;
    }
    @Override
    public boolean isEnabled(){ // 계정 활성화 여부
        return true;
    }


}
