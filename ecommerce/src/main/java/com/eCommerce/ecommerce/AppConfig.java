package com.eCommerce.ecommerce;

import com.eCommerce.ecommerce.security.ActiveUserStore;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    // Place all beans here

    @Bean
    public ActiveUserStore activeUserStore() {
        return new ActiveUserStore();
    }

}