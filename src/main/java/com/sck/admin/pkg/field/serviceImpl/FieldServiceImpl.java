package com.sck.admin.pkg.field.serviceImpl;

import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.Field;
import com.sck.admin.pkg.field.mapper.FieldMapper;
import com.sck.admin.pkg.field.service.FieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FieldServiceImpl implements FieldService {

    @Autowired
    public FieldMapper fieldMapper;


    /* 전체 조회 */
    @Override
    public List<Field> page(Search condition){
        return fieldMapper.page(condition);
    }

    /* 게시글 총 개수 */
    @Override
    public int listTotalCount(Search condition){
        return fieldMapper.listTotalCount(condition);
    }

    /* 게시글 상세 조회 */
    @Override
    public Field findByDetail(Field condition){
        return fieldMapper.findByDetail(condition);
    }

    /* 게시글 추가 */
    @Override
    public void insert(Field condition){
        fieldMapper.insert(condition);
    }
    /* 게시글 상세 추가 */
    /*@Override
    public void insertDetail(Field condition){
        fieldMapper.insertDetail(condition);
    }*/
    /* 게시글 수정 */
    @Override
    public void update(Field condition){
        fieldMapper.update(condition);
    }
    /* 게시글 상세 수정 */
    /*@Override
    public void updateDetail(Field condition){
        fieldMapper.updateDetail(condition);
    }*/
    /* 게시글 삭제 */
    @Override
    public void delete(Field condition){
        fieldMapper.delete(condition);
    }
    /* 게시글 상세 삭제 */
    /*@Override
    public void deleteDetail(Field condition) {fieldMapper.deleteDetail(condition);}*/
    /* 게시글 삭제 여부(DEL_YN) */
    @Override
    public void deleteUpdate(Field condition){
        fieldMapper.deleteUpdate(condition);
    }
}
