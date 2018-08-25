package com.xiaojianhx.common.service.mail.web.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RefreshScope
@RestController
public class TestController {

    @Value("${spring.mail.host}")
    private String host;

    @ResponseBody
    @RequestMapping("/test")
    public String test() {
        return "Hello " + host;
    }
}