package com.jsp.shoppingcart_application.helper;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@Configuration
public class ConfigClass {
    @Bean
    public EntityManagerFactory getEMF() {
        return Persistence.createEntityManagerFactory("dev");
    }
}
