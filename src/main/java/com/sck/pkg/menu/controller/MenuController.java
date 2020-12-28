package com.sck.pkg.menu.controller;

import com.sck.domain.Menu;
import com.sck.pkg.menu.service.MenuService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MenuController {

    private static final Logger log = LoggerFactory.getLogger(MenuController.class);

    @Autowired
    private MenuService menuService;

    @RequestMapping("/menu")
    public String menu(@ModelAttribute("conn")Menu condition, Model model){
        List<Menu> adminResult = menuService.adminTree();
        List<Menu> frontResult = menuService.frontTree();
        model.addAttribute("adminResult",adminResult);
        model.addAttribute("frontResult",frontResult);
        return "/menu/menu";
    }

    @RequestMapping("/menu/save")
    @ResponseBody
    public Menu save(@RequestBody Menu condition){

        if(StringUtils.isEmpty(condition.getSeq())){
            menuService.insert(condition);
        } else {
            menuService.update(condition);
        }

        return condition;
    }

    @RequestMapping("/menu/delete")
    @ResponseBody
    public Menu delete(@RequestBody Menu condition){
        menuService.delete(condition);
        return condition;
    }
}
