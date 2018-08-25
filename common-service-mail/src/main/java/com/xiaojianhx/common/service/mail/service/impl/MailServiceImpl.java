package com.xiaojianhx.common.service.mail.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.xiaojianhx.common.service.mail.service.MailService;
import com.xiaojianhx.common.service.mail.service.form.MailForm;

@Service
public class MailServiceImpl implements MailService {

    @Autowired
    private JavaMailSender mailSender;

    public void send(MailForm form) {

        System.out.println(mailSender);

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("xiaojianhx@163.com");
        message.setTo("wanchao.gao@adinall.com");
        message.setSubject("主题：简单邮件");
        message.setText("测试邮件内容");
        mailSender.send(message);
    }
}