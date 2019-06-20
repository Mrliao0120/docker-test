package com.liao.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ProjectName docker-test
 * @Author LHB
 * @Data 2019/6/20 09:50
 * @Version 1.0
 * @Description
 */
@RestController
public class HelloController {





    @GetMapping(value = "/hello")
    public String  hello(){
        return "Ni 好Docker";
    }

    @GetMapping(value = "/hello2")
    public String  hello2(){
        return "Ni 好Docke2r";
    }
}
