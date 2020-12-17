package com.sck.pkg.account.service;

import com.sck.core.domain.Search;
import com.sck.domain.Member;
import com.sck.pkg.account.mapper.MemberAccMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberAccService {

    @Autowired
    private MemberAccMapper memberAccMapper;

    /* 전체 조회 */
    public List<Member> page(Search condition){
        return memberAccMapper.page(condition);
    }

    /* 게시글 총 개수 */
    public int listTotalCount(Search condition){
        return memberAccMapper.listTotalCount(condition);
    }
    /* 게시글 상세 조회 */
    public Member findByDetail(Member condition){
        return memberAccMapper.findByDetail(condition);
    }

    /* 게시글 추가 */
    public void insert(Member condition){
        memberAccMapper.insert(condition);
    }
    /* 게시글 수정 */
    public void update(Member condition){
        memberAccMapper.update(condition);
    }
    /* 게시글 삭제 */
    public void delete(Member condition){
        memberAccMapper.delete(condition);
    }

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Member condition){
        memberAccMapper.deleteUpdate(condition);
    }
}
