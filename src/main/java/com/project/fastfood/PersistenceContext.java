package com.project.fastfood;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.hibernate.cfg.Environment;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class PersistenceContext {
    @Bean
    DataSource dataSource() {
        HikariConfig dataSourceConfig = new HikariConfig();
        dataSourceConfig.setDriverClassName("com.mysql.jdbc.Driver");
        dataSourceConfig.setJdbcUrl("jdbc:mysql://localhost:3306/food_and_drink?zeroDateTimeBehavior=convertToNull");
        dataSourceConfig.setUsername("root");
        dataSourceConfig.setPassword("");

        return new HikariDataSource(dataSourceConfig);
    }
}
