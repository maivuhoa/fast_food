package com.project.fastfood.configs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.sql.DataSource;

@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private DataSource dataSource;
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select email, password, role_id from users where email=?")
                .authoritiesByUsernameQuery("select u.email, r.name, fullname from users u inner join roles r on(u.role_id=r.id_role) where u.email=?")
                .passwordEncoder(bCryptPasswordEncoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/about", "/error/**", "/index/**", "/combo/**", "/discount", "/discount/**",
                        "/login", "/register", "/recruitment", "/add-cart", "/cart", "/remove-cart", "/update_cart", "/order", "/order/save",
                        "/checkout/index", "/checkout/district/**", "/checkout/ward/**", "/profile", "/admin/**").permitAll()
//                .antMatchers("/about", "/error/**", "/index/**", "/combo/**", "/discount", "/discount/**",
//                        "/login", "/register", "/recruitment").permitAll()
//                .antMatchers("/add-cart", "/cart", "/remove-cart", "/update_cart", "/order", "/order/save",
//                        "/checkout/index", "/checkout/district/**", "/checkout/ward/**", "/profile").hasRole("CUSTOMER")
//                .antMatchers("/shipper-profile").hasRole("SHIPPER")
//                .antMatchers("/admin/**").hasRole("ADMIN")
//                .antMatchers("/admin/**").hasRole("MANAGER")
                .anyRequest().authenticated().and().csrf().disable().formLogin()
                .loginPage("/login").failureUrl("/login?error=true")
                .defaultSuccessUrl("/profile")
                .usernameParameter("email")
                .passwordParameter("password")
                .and().logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/about").and().exceptionHandling()
                .accessDeniedPage("/error/403");
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**", "/public/**");
    }

}
