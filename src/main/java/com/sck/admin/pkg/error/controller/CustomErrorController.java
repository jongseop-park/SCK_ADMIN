package com.sck.admin.pkg.error.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
public class CustomErrorController implements ErrorController { // ErrorController 상속

    private static final String PATH = "/error";

    private static final String VIEW_PATH = "error/";

    private static final Logger log = LoggerFactory.getLogger(CustomErrorController.class);

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request){
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        HttpStatus httpStatus = HttpStatus.valueOf(Integer.valueOf(status.toString()));
        int statusCode = Integer.valueOf(Integer.valueOf(status.toString()));

        log.info("HttpStatus : " + httpStatus.toString());

        if(status != null){
            if(statusCode == HttpStatus.BAD_REQUEST.value()){
                return VIEW_PATH + "400";
            }
            if(statusCode == HttpStatus.FORBIDDEN.value()){
                return VIEW_PATH + "403";
            }
            if(statusCode == HttpStatus.NOT_FOUND.value()){
                return VIEW_PATH + "404";
            }
            if(statusCode == HttpStatus.METHOD_NOT_ALLOWED.value()){
                return VIEW_PATH + "405";
            }
            if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()){
                return VIEW_PATH + "500";
            }
        }

        return "error/404";
    }

    @RequestMapping("/400")
    public String badRequest(){
        return "error/400";
    }
    @RequestMapping("/403")
    public String forbidden(){
        return "error/403";
    }
    @RequestMapping("/404")
    public String notFound(){
        return "error/404";
    }
    @RequestMapping("/405")
    public String methodNotAllowed(){
        return "error/405";
    }
    @RequestMapping("/500")
    public String InternalServerError(){
        return "error/500";
    }
    @Override
    public String getErrorPath(){
        return PATH;
    }

}
