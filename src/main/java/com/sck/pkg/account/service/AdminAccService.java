package com.sck.pkg.account.service;

import com.sck.core.domain.Search;
import com.sck.domain.Admin;
import com.sck.pkg.account.mapper.AdminAccMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdminAccService {

    @Autowired
    private AdminAccMapper adminAccMapper;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    /* 전체 조회 */
    public List<Admin> page(Search condition){
        return adminAccMapper.page(condition);
    }

    /* 게시글 총 개수 */
    public int listTotalCount(Search condition){
        return adminAccMapper.listTotalCount(condition);
    }
    /* 게시글 상세 조회 */
    public Admin findByDetail(Admin condition){
        return adminAccMapper.findByDetail(condition);
    }

    /* 게시글 추가 */
    public void insert(Admin condition){
        adminAccMapper.insert(condition);
    }
    /* 게시글 수정 */
    public void update(Admin condition){
        adminAccMapper.update(condition);
    }
    /* 게시글 삭제 */
    public void delete(Admin condition){
        adminAccMapper.delete(condition);
    }
    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Admin condition){
        adminAccMapper.deleteUpdate(condition);
    }
    /* 비밀번호 실패횟수 초기화 */
    public void failCntReset(String id) {
        adminAccMapper.failCntReset(id);
    }
    /* 비밀번호 초기화 */
    public void passwordReset(String id){
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("id",id);
        map.put("pw",bCryptPasswordEncoder.encode("123456789a"));
        adminAccMapper.passwordReset(map);
    }
    /* 계정 잠금 해제 */
    public void accountIsLock(String id){
        adminAccMapper.accountIsLock(id);
    }
}
