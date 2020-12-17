package com.sck.pkg.fieldMain.mapper;

import com.sck.core.domain.Search;
import com.sck.domain.FieldMain;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface FieldMainMapper {


    /* 게시글 목록 조회 */
    public List<FieldMain> page(Search condition);

    /* 게시물 총 개수 */
    public int listTotalCount(Search condition);

    /* 상세조회 */
    public FieldMain findByDetail(FieldMain condition);

    /* 게시글 추가 */
    public void insert(FieldMain condition);

    /* 게시글 상세 추가 */
//    public void insertDetail(Field condition);

    /* 게시글 수정 */
    public void update(FieldMain condition);

    /* 게시글 상세 수정 */
//    public void updateDetail(Field condition);

    /* 게시글 삭제 */
    public void delete(FieldMain condition);

    /* 게시글 상세 삭제 */
//    public void deleteDetail(Field condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(FieldMain condition);
}
