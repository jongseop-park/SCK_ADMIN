package com.sck.admin.pkg.file.mapper;

import com.sck.admin.domain.File;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface FileMapper {

    /* 파일 저장 */
    public void insert(File condition);

    /* 파일 수정 */
    public void update(File condition);

    /* 파일 조회 */
    public List<File> findByFile(String seq);
}
