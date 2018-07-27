package com.xiaojianhx.common.service.mail.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.xiaojianhx.common.service.mail.service.MailService;
import com.xiaojianhx.common.service.mail.service.form.MailForm;

@RefreshScope
@RestController
public class MailController {

    @Autowired
    private MailService service;

    @ResponseBody
    @RequestMapping("/mail")
    public String mail(MailForm form) {

        service.send(form);
        return "Hello !";
    }
}