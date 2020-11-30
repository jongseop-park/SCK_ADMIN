package com.sck.admin.pkg.field.mapper;

import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.Field;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface FieldMapper{


    /* 게시글 목록 조회 */
    public List<Field> page(Search condition);

    /* 게시물 총 개수 */
    public int listTotalCount(Search condition);

    /* 상세조회 */
    public Field findByDetail(Field condition);

    /* 게시글 추가 */
    public void insert(Field condition);

    /* 게시글 상세 추가 */
//    public void insertDetail(Field condition);

    /* 게시글 수정 */
    public void update(Field condition);

    /* 게시글 상세 수정 */
//    public void updateDetail(Field condition);

    /* 게시글 삭제 */
    public void delete(Field condition);

    /* 게시글 상세 삭제 */
//    public void deleteDetail(Field condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Field condition);
}
