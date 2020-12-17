package com.sck.pkg.file.service;

import com.sck.domain.File;
import com.sck.pkg.file.mapper.FileMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileService {

    @Autowired
    public FileMapper fileMapper;

    /* 파일 저장 */
    public void insert(File condition){
        fileMapper.insert(condition);
    }
    /* 파일 수정 */
    public void update(File condition){
        fileMapper.update(condition);
    }

    /* 파일 조회 */
    public List<File> findByFile(String seq){
        return fileMapper.findByFile(seq);
    }

    /* 파일 삭제 */
    public void delete(String deleteSeq){
        fileMapper.delete(deleteSeq);
    }
}
