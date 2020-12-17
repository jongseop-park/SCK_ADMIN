package com.sck.pkg.authorityGrp.service;

import com.sck.core.domain.Search;
import com.sck.domain.AuthorityGrp;
import com.sck.pkg.authorityGrp.mapper.AuthorityGrpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorityGrpService {

    @Autowired
    private AuthorityGrpMapper authorityGrpMapper;

    /* 전체 조회 */
    public List<AuthorityGrp> page(Search condition){
        return authorityGrpMapper.page(condition);
    }

    /* 게시글 총 개수 */
    public int listTotalCount(Search condition){
        return authorityGrpMapper.listTotalCount(condition);
    }

    /* 게시글 상세 조회 */
    public AuthorityGrp findByDetail(AuthorityGrp condition){
        return authorityGrpMapper.findByDetail(condition);
    }

    /* 게시글 추가 */
    public void insert(AuthorityGrp condition){
        authorityGrpMapper.insert(condition);
    }
    
    /* 게시글 수정 */
    public void update(AuthorityGrp condition){
        authorityGrpMapper.update(condition);
    }
    
    /* 게시글 삭제 */
    public void delete(AuthorityGrp condition){
        authorityGrpMapper.delete(condition);
    }
    
    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(AuthorityGrp condition){
        authorityGrpMapper.deleteUpdate(condition);
    }

}
