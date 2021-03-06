package com.sck.pkg.fieldMain.controller;

import com.sck.core.domain.Paging;
import com.sck.core.domain.Search;
import com.sck.domain.FieldMain;
import com.sck.pkg.fieldMain.service.FieldMainService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/fieldMain")
public class FieldMainController { // 구장 관리

    private static final Logger log = LoggerFactory.getLogger(FieldMainController.class);


    @Autowired
    public FieldMainService fieldMainService;

    @RequestMapping("/list")
    public String list(@ModelAttribute("conn")Search condition, Model model) {
        List<FieldMain> result = fieldMainService.page(condition);
        model.addAttribute("result", result);

        Paging paging = new Paging();
        paging.setCriteria(condition);
        paging.setTotalCount(fieldMainService.listTotalCount(condition));
        model.addAttribute("paging", paging);

        log.info("==================================================================");
        log.info("fieldMain/list");

        return "fieldMain/list";
    }

    @RequestMapping("/form")
    public String form(FieldMain condition, Model model) throws Exception{

        if (StringUtils.isNotEmpty(condition.getSeq())) { // 데이터 존재
            model.addAttribute("result", fieldMainService.findByDetail(condition));
            model.addAttribute("isUpdate", true);
        } else { // 데이터 없음
            model.addAttribute("isUpdate", false);
        }
        return "fieldMain/form";
    }

    /**
     * 저장, 수정
     *
     * @param condition
     * @return
     * @ResponseBody 응답 : 서버 > 클라이언트로 응답 데이터를 전송하기 위해 사용하며 자바 객체를 HTTP 응답 본문의 객체로 변환하여 클라이언트로 전송
     * @RequestBody 요청 : 자바 객체로 변환 시 HttpMessageConverter를 사용하여 헤더에 담긴 ContentType을 보고
     * 어떤 Message Converter를 사용할 지 판단 후 요청 본문에 담긴 값을 Java Object로 변환
     */
    @RequestMapping("/save")
    @ResponseBody
    public FieldMain save(@RequestBody FieldMain condition) { /* @PathVariable("id") String id  > Mapping {id} 중괄호에 명시된 값을 변수로 받음*/
//        List<FieldSub> fieldDetail = condition.getFieldDetail();

        // 시퀀스 존재여부에 따라 insert, update 처리
        if (StringUtils.isEmpty(condition.getSeq())) {
            fieldMainService.insert(condition);
//            fieldService.insertDetail(condition);
            log.info("==================================================================");
            log.info("fieldMain/save");
            log.info("insert");
        } else {
            fieldMainService.update(condition);
//            fieldService.updateDetail(condition);
            log.info("==================================================================");
            log.info("fieldMain/save");
            log.info("update");
        }
        return condition;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public FieldMain delete(@RequestBody FieldMain condition){

        fieldMainService.deleteUpdate(condition); // 게시물 삭제
//        fieldService.deleteDetail(condition); // 게시물 상세 삭제
        log.info("==================================================================");
        log.info("fieldMain/delete");

        return condition;
    }

}
