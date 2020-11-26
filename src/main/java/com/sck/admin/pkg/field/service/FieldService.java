package com.sck.admin.pkg.field.service;

import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.Field;

import java.util.List;

public interface FieldService{


    public List<Field> page(Search condition);

    public int listTotalCount(Search condition);

    public Field findByDetail(Field condition);

    /* 게시글 추가 */
    public void insert(Field condition);

    /* 게시글 상세 추가 */
    public void insertDetail(Field condition);

    /* 게시글 수정 */
    public void update(Field condition);

    /* 게시글 상세 수정*/
    public void updateDetail(Field condition);

    /* 게시글 삭제 */
    public void delete(Field condition);

    /* 게시글 상세 삭제 */
    public void deleteDetail(Field condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(Field condition);
}
