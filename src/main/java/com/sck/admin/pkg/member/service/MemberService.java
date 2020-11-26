package com.sck.admin.pkg.member.service;

import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.Admin;
import com.sck.admin.pkg.member.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    
    @Autowired
    private MemberMapper memberMapper;

    /* 전체 조회 */
    public List<Admin> page(Search condition){
        return memberMapper.page(condition);
    }

    /* 게시글 총 개수 */
    public int listTotalCount(Search condition){
        return memberMapper.listTotalCount(condition);
    }
    /* 게시글 상세 조회 */
    public Admin findByDetail(Admin condition){
        return memberMapper.findByDetail(condition);
    }

    /* 게시글 추가 */
    public void insert(Admin condition){
        memberMapper.insert(condition);
    }
    /* 게시글 수정 */
    public void update(Admin condition){
        memberMapper.update(condition);
    }
    /* 게시글 삭제 */
    public void delete(Admin condition){
        memberMapper.delete(condition);
    }

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Admin condition){
        memberMapper.deleteUpdate(condition);
    }
}
