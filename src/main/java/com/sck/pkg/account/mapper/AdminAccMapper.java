package com.sck.pkg.account.mapper;

import com.sck.core.domain.Search;
import com.sck.domain.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface AdminAccMapper {

    /* 게시글 목록 조회 */
    public List<Admin> page(Search condition);

    /* 게시물 총 개수 */
    public int listTotalCount(Search condition);

    /* 상세조회 */
    public Admin findByDetail(Admin condition);

    /* 게시글 추가 */
    public void insert(Admin condition);

    /* 게시글 수정 */
    public void update(Admin condition);

    /* 게시글 삭제 */
    public void delete(Admin condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Admin condition);

    /* 비밀번호 실패횟수 초기화 */
    public void failCntReset(@Param("id") String id);

    /* 비밀번호 초기화 */
    public void passwordReset(Map<String, Object> map);

    /* 계정 잠금 해제 */
    public void accountIsLock(@Param("id") String id);


}
