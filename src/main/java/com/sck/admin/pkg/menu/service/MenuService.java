package com.sck.admin.pkg.menu.service;

import com.sck.admin.domain.Menu;
import com.sck.admin.pkg.menu.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuService {

    @Autowired
    private MenuMapper menuMapper;

    /* jstree(admin) */
    public List<Menu> adminTree(){
        return menuMapper.adminTree();
    }

    /* jstree(front) */
    public List<Menu> frontTree(){
        return menuMapper.frontTree();
    }

    /* 저장 */
    public void insert(Menu condition){
        menuMapper.insert(condition);
    }

    /* 수정 */
    public void update(Menu condition){
        menuMapper.update(condition);
    }

    /* 삭제 */
    public void delete(Menu condition) {
        menuMapper.delete(condition);
    }
}
