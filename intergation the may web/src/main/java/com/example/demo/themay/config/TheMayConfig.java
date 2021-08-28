package com.example.demo.themay.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = {"com.example.demo.themay.repo"},entityManagerFactoryRef = "theMayEntityManagerFactory",
transactionManagerRef = "theMayTransactionManager")
public class TheMayConfig {

    @Bean(name="theMayDataSource")
    @ConfigurationProperties(prefix = "second.datasource")
    public DataSource theMayDataSource(){
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "theMayEntityManagerFactory")
    public LocalContainerEntityManagerFactoryBean theMayEntityManagerFactory(
            EntityManagerFactoryBuilder builder) {
        return builder
                .dataSource(theMayDataSource())
                .packages("com.example.demo.themay.data")
                .persistenceUnit("theMay")
                .build();
    }

    @Bean(name = "theMayTransactionManager")
    public PlatformTransactionManager theMayTransactionManager(
            final @Qualifier("theMayEntityManagerFactory") LocalContainerEntityManagerFactoryBean theMayEntityManagerFactory) {
        return new JpaTransactionManager(theMayEntityManagerFactory.getObject());
    }
}
