package com.sck.pkg.account.service;

import com.sck.core.domain.Search;
import com.sck.domain.Admin;
import com.sck.pkg.account.mapper.AdminAccMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminAccService {
    
    @Autowired
    private AdminAccMapper adminAccMapper;

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
}
