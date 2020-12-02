package com.sck.admin.pkg.fieldSub.service;

import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.FieldSub;
import com.sck.admin.pkg.fieldSub.mapper.FieldSubMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FieldSubService {

    @Autowired
    public FieldSubMapper fieldSubMapper;

    /* 게시글 목록 조회 */
    public List<FieldSub> page(Search condition){
        return fieldSubMapper.page(condition);
    }
    /* 게시글 총 개수 */
    public int listTotalCount(Search condition){
        return fieldSubMapper.listTotalCount(condition);
    }
    /* 게시글 상세 조회 */
    public FieldSub findByDetail(FieldSub condition) {
        return fieldSubMapper.findByDetail(condition);
    }
    /* 게시글 저장 */
    public void insert(FieldSub condition){
        fieldSubMapper.insert(condition);
    }
    /* 게시글 수정 */
    public void update(FieldSub condition){
        fieldSubMapper.update(condition);
    }
    /* 게시글 삭제 */
    public void delete(FieldSub condition){
        fieldSubMapper.delete(condition);
    }
    /* 서브구장 게시글 생성 제한(15개) */
    public int subTotalCount(FieldSub condition){
        return fieldSubMapper.subTotalCount(condition);
    }


}
