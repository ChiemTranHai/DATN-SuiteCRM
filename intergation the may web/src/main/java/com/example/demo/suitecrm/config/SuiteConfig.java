package com.example.demo.suitecrm.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.*;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import javax.sql.DataSource;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = {"com.example.demo.suitecrm.repo"},entityManagerFactoryRef = "suiteManagerFactory",
transactionManagerRef ="suiteTransactionManager" )
public class SuiteConfig {
    @Primary
    @Bean(name="suiteDataSource")
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource suiteDataSource(){
        return DataSourceBuilder.create().build();
    }

    @Primary
    @Bean(name = "suiteManagerFactory")
    public LocalContainerEntityManagerFactoryBean suiteManagerFactory(
            EntityManagerFactoryBuilder builder) {
        return builder
                .dataSource(suiteDataSource())
                .packages("com.example.demo.suitecrm.data")
                .persistenceUnit("suite")
                .build();
    }

    @Primary
    @Bean(name = "suiteTransactionManager")
    public PlatformTransactionManager suiteTransactionManager(
            final @Qualifier("suiteManagerFactory") LocalContainerEntityManagerFactoryBean suiteManagerFactory) {
        return new JpaTransactionManager(suiteManagerFactory.getObject());
    }
}
