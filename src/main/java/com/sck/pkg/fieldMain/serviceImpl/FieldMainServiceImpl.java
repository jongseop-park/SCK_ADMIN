package com.sck.pkg.fieldMain.serviceImpl;

import com.sck.core.domain.Search;
import com.sck.domain.FieldMain;
import com.sck.pkg.fieldMain.mapper.FieldMainMapper;
import com.sck.pkg.fieldMain.service.FieldMainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FieldMainServiceImpl implements FieldMainService {

    @Autowired
    public FieldMainMapper fieldMainMapper;


    /* 전체 조회 */
    @Override
    public List<FieldMain> page(Search condition){
        return fieldMainMapper.page(condition);
    }

    /* 게시글 총 개수 */
    @Override
    public int listTotalCount(Search condition){
        return fieldMainMapper.listTotalCount(condition);
    }

    /* 게시글 상세 조회 */
    @Override
    public FieldMain findByDetail(FieldMain condition){
        return fieldMainMapper.findByDetail(condition);
    }

    /* 게시글 추가 */
    @Override
    public void insert(FieldMain condition){
        fieldMainMapper.insert(condition);
    }
    /* 게시글 상세 추가 */
    /*@Override
    public void insertDetail(Field condition){
        fieldMapper.insertDetail(condition);
    }*/
    /* 게시글 수정 */
    @Override
    public void update(FieldMain condition){
        fieldMainMapper.update(condition);
    }
    /* 게시글 상세 수정 */
    /*@Override
    public void updateDetail(Field condition){
        fieldMapper.updateDetail(condition);
    }*/
    /* 게시글 삭제 */
    @Override
    public void delete(FieldMain condition){
        fieldMainMapper.delete(condition);
    }
    /* 게시글 상세 삭제 */
    /*@Override
    public void deleteDetail(Field condition) {fieldMapper.deleteDetail(condition);}*/
    /* 게시글 삭제 여부(DEL_YN) */
    @Override
    public void deleteUpdate(FieldMain condition){
        fieldMainMapper.deleteUpdate(condition);
    }
}
