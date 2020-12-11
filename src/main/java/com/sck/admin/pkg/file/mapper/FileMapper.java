package com.sck.admin.pkg.file.mapper;

import com.sck.admin.domain.File;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

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

    /* 파일 삭제 */
    public void delete(@Param("seq") String deleteSeq);
}
