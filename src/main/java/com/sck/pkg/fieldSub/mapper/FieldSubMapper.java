package com.sck.pkg.fieldSub.mapper;
import com.sck.core.domain.Search;
import com.sck.domain.FieldSub;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface FieldSubMapper {

    /* 게시글 목록 조회 */
    public List<FieldSub> page(Search condition);

    /* 게시글 총 개수 */
    public int listTotalCount(Search condition);

    /* 게시글 상세 조회 */
    public FieldSub findByDetail(FieldSub condition);

    /* 게시글 저장 */
    public void insert(FieldSub condition);

    /* 게시글 수정 */
    public void update(FieldSub condition);

    /* 게시글 삭제(DEL_YN = 'N') */
    public void delete(FieldSub condition);

    /* 서브구장 게시글 생성 제한(15개) */
    public int subTotalCount(FieldSub condition);
}
