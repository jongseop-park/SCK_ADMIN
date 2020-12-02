package com.sck.admin.pkg.fieldMain.service;

import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.FieldMain;

import java.util.List;

public interface FieldMainService {


    public List<FieldMain> page(Search condition);

    public int listTotalCount(Search condition);

    public FieldMain findByDetail(FieldMain condition);

    /* 게시글 추가 */
    public void insert(FieldMain condition);

    /* 게시글 상세 추가 */
//    public void insertDetail(Field condition);

    /* 게시글 수정 */
    public void update(FieldMain condition);

    /* 게시글 상세 수정*/
//    public void updateDetail(Field condition);

    /* 게시글 삭제 */
    public void delete(FieldMain condition);

    /* 게시글 상세 삭제 */
//    public void deleteDetail(Field condition);

    /* 게시글 삭제 여부(DEL_YN) */
    public void deleteUpdate(FieldMain condition);
}
