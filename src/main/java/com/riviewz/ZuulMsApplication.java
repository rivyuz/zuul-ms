package com.riviewz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableZuulProxy
@EnableDiscoveryClient
@SpringBootApplication
@EnableFeignClients("com.riviewz")
public class ZuulMsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ZuulMsApplication.class, args);
	}
}


//http://localhost/