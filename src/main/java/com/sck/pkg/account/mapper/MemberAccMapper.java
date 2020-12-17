package com.sck.pkg.account.mapper;

import com.sck.core.domain.Search;
import com.sck.domain.Member;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MemberAccMapper {

    /* 게시글 목록 조회 */
    public List<Member> page(Search condition);

    /* 게시물 총 개수 */
    public int listTotalCount(Search condition);

    /* 상세조회 */
    public Member findByDetail(Member condition);

    /* 게시글 추가 */
    public void insert(Member condition);

    /* 게시글 수정 */
    public void update(Member condition);

    /* 게시글 삭제 */
    public void delete(Member condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Member condition);
    
}
