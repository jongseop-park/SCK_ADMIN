package com.sck.pkg.admin.controller;

import com.sck.domain.Admin;
import com.sck.pkg.admin.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminController {

    private static final Logger log = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;


    @RequestMapping(value = "/login")
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

    @RequestMapping("/pwCheck")
    public String pwCheckPopup(@RequestParam(value = "checkResult", defaultValue = "defaultValue") String checkResult, Model model){
        model.addAttribute("checkResult",checkResult);
        return "admin/pwCheck";
    }

    @RequestMapping("/profile")
    public String profile(Admin condition, Model model, RedirectAttributes redirect) {
        try {
            // 비밀번호 체크
            if (condition.getAdminId().equals("") || condition.getAdminPw().equals("") || !adminService.passwordCheck(condition)) {
                redirect.addAttribute("checkResult", "false");
                return "redirect:pwCheck";
            } else { // 옳은 결과일 경우 프로필로 리턴
                model.addAttribute("result", adminService.myProfile(condition));
                return "admin/profile";
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:pwCheck";
    }

    @RequestMapping("/profile/save")
    @ResponseBody
    public Admin profileSave(@RequestBody Admin condition){ // 관리자 프로필 수정
        adminService.save(condition);
        return condition;
    }

}
