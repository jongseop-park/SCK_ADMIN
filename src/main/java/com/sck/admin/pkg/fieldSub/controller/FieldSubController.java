package com.sck.admin.pkg.fieldSub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fieldSub")
public class FieldSubController {


    @RequestMapping("/list")
    public String list(){

        return "fieldSub/list";
    }

    @RequestMapping("/form")
    public String form(){

        return "fieldSub/form";
    }
}
