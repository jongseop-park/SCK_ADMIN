package com.sck.admin.pkg.admin.service;

import com.sck.admin.domain.Admin;
import com.sck.admin.domain.AdminPrincipal;
import com.sck.admin.pkg.admin.mapper.AdminMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class AdminService implements UserDetailsService {

    private static final Logger log = LoggerFactory.getLogger(AdminService.class);

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException { // 관리자 정보
        log.info("id : "+id);
        ArrayList<Admin> adminAuthes = adminMapper.findByAdminId(id);
        log.info("adminAuthes size : "+ adminAuthes.size());

        if(adminAuthes.size() == 0){
            throw new UsernameNotFoundException("Admin "+id+"Not Found");
        }

        return new AdminPrincipal(adminAuthes);
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
    public void InsertUser(Admin admin) throws Exception{
        admin.setAdminPw(bCryptPasswordEncoder.encode(admin.getAdminPw())); // 비밀번호 암호화
        int flag = adminMapper.adminInsert(admin); // 회원가입 후
        log.info("flag number : "+flag);

        if(flag > 0) {
            adminMapper.authInsert(admin);
        }
    }

}
