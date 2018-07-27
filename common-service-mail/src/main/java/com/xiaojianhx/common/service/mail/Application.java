package com.xiaojianhx.common.service.mail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * 
 * http://localhost:8001/actuator/refresh 刷新
 * 
 * @author xiaojianhx
 * @version V1.0.0 $ 2018年7月28日上午12:04:09
 */
@SpringBootApplication
@EnableDiscoveryClient
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}