package com.sck.admin.pkg.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {

    @RequestMapping("/sample")
    public String sample(){

        return "sample/sample";
    }
}

/*
@RequestBody는 반드시 POST요청과 함께 사용해야 한다.

@ModelAttribute는 클라가 전송하는 여러 파라미터들을 1대1로 바인딩한다.
    파라미터 전달 시 content-type은 application/x-www-form-urlencoded; charset=UTF-8;
    [JSP에서 Form태그를 통해 전달받은 파라미터들을 객체로 바인딩 시키는 경우에 사용]
    ex)
    {seq : 12}
    @ModelAttribute('seq') int Sequence

@RequestParam은 요청 파라미터를 메소드에서 1대1로 받기 위해 사용. 필요한 변수가 아니면 required = false로 설정.

@PathVariable 파라미터를 URL에 포함시켜 전달하는 방법.



 */