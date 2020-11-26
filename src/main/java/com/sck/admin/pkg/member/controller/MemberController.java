package com.sck.admin.pkg.member.controller;

import com.sck.admin.core.domain.Paging;
import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.Admin;
import com.sck.admin.pkg.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/master")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/member/list")
    public String list(@ModelAttribute("conn") Search condition, Model model){
        List<Admin> result = memberService.page(condition);
        model.addAttribute("result",result);

        Paging paging = new Paging();
        paging.setCriteria(condition);
        paging.setTotalCount(memberService.listTotalCount(condition));
        model.addAttribute("paging",paging);

        return "management/member/list";
    }


}
