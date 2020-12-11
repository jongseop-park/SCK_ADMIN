package com.sck.admin.pkg.fieldSub.controller;

import com.sck.admin.core.domain.Paging;
import com.sck.admin.core.domain.Search;
import com.sck.admin.domain.FieldSub;
import com.sck.admin.domain.File;
import com.sck.admin.pkg.fieldSub.service.FieldSubService;
import com.sck.admin.pkg.file.service.FileService;
import lombok.extern.log4j.Log4j;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/fieldSub")
public class FieldSubController {

    @Autowired
    public FieldSubService fieldSubService;

    @Autowired
    public FileService fileService;

    private static final Logger log = LoggerFactory.getLogger(FieldSubController.class);



    @RequestMapping("/list")
    public String list(@ModelAttribute("conn") Search condition, Model model){
        List<FieldSub> result = fieldSubService.page(condition);
        model.addAttribute("result",result);

        Paging paging = new Paging();
        paging.setCriteria(condition);
        paging.setTotalCount(fieldSubService.listTotalCount(condition));
        model.addAttribute("paging",paging);
        return "fieldSub/list";
    }

    @RequestMapping("/form")
    public String form(FieldSub condition, Model model){

        if(StringUtils.isNotEmpty(condition.getSeq())){
            List<File> resultFile = fileService.findByFile(condition.getSeq());
            int count = 0;
            for(File arr : resultFile){
                resultFile.get(count++).setFilePath(
                        arr.getFilePath()
                                .replace("\\","/")
                                .replace("C:","")
                                .replace("D:",""));
            }
            model.addAttribute("result",fieldSubService.findByDetail(condition));
            model.addAttribute("resultFile",resultFile);
            model.addAttribute("isUpdate",true);
        } else {
            model.addAttribute("isUpdate",false);
        }
        return "fieldSub/form";
    }

    @RequestMapping("/save")
    @ResponseBody
    public FieldSub save(@RequestBody FieldSub condition){

            if(StringUtils.isEmpty(condition.getSeq())){
                fieldSubService.insert(condition);
            } else {
                fieldSubService.update(condition);
            }

        return condition;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public FieldSub delete(@RequestBody FieldSub condition){
        fieldSubService.delete(condition);
        return condition;
    }

    @RequestMapping("/length")
    @ResponseBody
    public int length(@RequestBody FieldSub condition){

        return fieldSubService.subTotalCount(condition);
    }
}

