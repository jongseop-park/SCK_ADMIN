package com.sck.pkg.admin.service;

import com.sck.domain.Admin;
import com.sck.domain.AdminPrincipal;
import com.sck.pkg.admin.mapper.AdminMapper;
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
        log.info("====================================");
        log.info("id : "+id);
        ArrayList<Admin> adminAuthes = adminMapper.findByAdminId(id);
        log.info("adminAuthes size : " + adminAuthes.size());

        if(adminAuthes.size() == 0){
            throw new UsernameNotFoundException("Admin " + id + " Not Found");
        }
        log.info("====================================");
        return new AdminPrincipal(adminAuthes);
    }

    /* Transactional
    * begin, commit 자동수행
    * 예외시 rollback 자동수행 */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {Exception.class})
    public void InsertUser(Admin admin) throws Exception{
        admin.setAdminPw(bCryptPasswordEncoder.encode(admin.getAdminPw())); // 비밀번호 암호화
        int flag = adminMapper.adminInsert(admin); // 회원가입 후
        log.info("flag number : "+flag);

        if(flag > 0) {
            adminMapper.authInsert(admin);
        }
    }

    /* 회원정보상세 */
    public Admin myProfile(Admin condition){
        return adminMapper.myProfile(condition);
    }

    /* 회원정보수정 */
    public void save(Admin condition){
        condition.setAdminPw(bCryptPasswordEncoder.encode(condition.getAdminPw()));
        adminMapper.save(condition);
    }

    /* 회원정보확인 비밀번호 체크 */
    public boolean passwordCheck(Admin condition) {
        String returnValue = adminMapper.passwordCheck(condition);
        return bCryptPasswordEncoder.matches(condition.getAdminPw(),returnValue);
    }

    /* 로그인 시 정보업데이트 */
    public void loginSuccess(String id) {
        adminMapper.loginSuccess(id);
    }

    /* 비밀번호 실패횟수 카운트 */
    public void failCnt(String id){
        adminMapper.failCnt(id);
    }

    /* 비밀번호 실패횟수 초기화 */
    public void failCntReset(String id){
        adminMapper.failCntReset(id);
    }
}
