package com.sck.pkg.authorityGrp.mapper;

import com.sck.core.domain.Search;
import com.sck.domain.AuthorityGrp;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AuthorityGrpMapper {

    /* 게시글 목록 조회 */
    public List<AuthorityGrp> page(Search condition);

    /* 게시물 총 개수 */
    public int listTotalCount(Search condition);

    /* 상세조회 */
    public AuthorityGrp findByDetail(AuthorityGrp condition);

    /* 게시글 추가 */
    public void insert(AuthorityGrp condition);

    /* 게시글 수정 */
    public void update(AuthorityGrp condition);

    /* 게시글 삭제 */
    public void delete(AuthorityGrp condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(AuthorityGrp condition);

}
