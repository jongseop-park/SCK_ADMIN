package com.sck.admin.pkg.admin.controller;

import com.sck.admin.domain.Admin;
import com.sck.admin.pkg.admin.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {

    private static final Logger log = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "admin/login";
    }

    @RequestMapping("/logout")
    public String logout() throws Exception {
        return "redirect:login";
    }

    @RequestMapping("/signUp")
    public String signup() throws Exception {

        return "admin/signUp";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Admin save(@RequestBody Admin admin) throws Exception{
        log.info("진입");
        adminService.InsertUser(admin);
        return admin;
    }

    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/")
    public String index(){
        return "redirect:main";
    }

}
