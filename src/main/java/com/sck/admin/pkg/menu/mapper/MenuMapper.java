package com.sck.admin.pkg.menu.mapper;

import com.sck.admin.domain.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MenuMapper {

    /* jstree(admin) */
    public List<Menu> adminTree();

    /* jstree(front) */
    public List<Menu> frontTree();

    /* 저장 */
    public void insert(Menu condition);

    /* 수정 */
    public void update(Menu condition);

    /* 삭제 */
    public void delete(Menu condition);
}
