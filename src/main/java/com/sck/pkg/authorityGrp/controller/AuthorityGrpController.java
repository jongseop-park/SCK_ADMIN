package com.sck.pkg.authorityGrp.controller;

import com.sck.core.domain.Paging;
import com.sck.core.domain.Search;
import com.sck.domain.AuthorityGrp;
import com.sck.pkg.authorityGrp.service.AuthorityGrpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/authorityGrp/")
public class AuthorityGrpController {

    @Autowired
    private AuthorityGrpService authorityGrpService;

    private static final Logger log = LoggerFactory.getLogger(AuthorityGrpController.class);

    @RequestMapping("/list")
    public String list(@ModelAttribute("conn")Search condition, Model model){
        List<AuthorityGrp> result = authorityGrpService.page(condition);
        model.addAttribute("result",result);

        Paging paging = new Paging();
        paging.setCriteria(condition);
        paging.setTotalCount(authorityGrpService.listTotalCount(condition));
        model.addAttribute("paging",paging);

        return "/authorityGrp/list";
    }
}
