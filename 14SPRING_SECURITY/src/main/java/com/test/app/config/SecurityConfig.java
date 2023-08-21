package com.test.app.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.test.app.config.auth.PrincipalDetailsService;
import com.test.app.config.auth.exceptionhandler.CustomAccessDeniedHandler;
import com.test.app.config.auth.exceptionhandler.CustomAuthentictionEntryPoint;
import com.test.app.config.auth.loginhandler.CustomAuthenticationFailureHandler;
import com.test.app.config.auth.loginhandler.CustomLoginSuccessHandler;
import com.test.app.config.auth.logouthandler.CustomLogoutHandler;
import com.test.app.config.auth.logouthandler.CustomLogoutSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private DataSource dataSource2;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http
			.authorizeRequests()
				.antMatchers("/","/public", "/myLogin", "/join").permitAll()
				.antMatchers("/user").hasRole("USER")		//ROLE_USER
				.antMatchers("/member").hasRole("MEMBER")	//ROLE_MEMBER
				.antMatchers("/admin").hasRole("ADMIN")		//ROLE_ADMIN
				.anyRequest().authenticated()				//나머지 URL은 모두 인증작업이 완료된 이후 접근가능
			.and()
			//로그인
			.formLogin()
			.loginPage("/myLogin")
			.successHandler(new CustomLoginSuccessHandler())	//ROLE_USER -> user페이지 / ROLE_MEMBER -> member페이지
			.failureHandler(new CustomAuthenticationFailureHandler())
			
			.and()
			//로그아웃
			.logout()
			.logoutUrl("/logout")
			.permitAll()
			.addLogoutHandler(new CustomLogoutHandler())				//세션초기화
			.logoutSuccessHandler(new CustomLogoutSuccessHandler());	//기본위치로 페이지 이동
		
		http
			.exceptionHandling()
			.authenticationEntryPoint(new CustomAuthentictionEntryPoint())	//인증이 필요한 자원에 접근 예외처리
			.accessDeniedHandler(new CustomAccessDeniedHandler())		//권한 실패 예외처리
			
			.and()
			//REMEMBER-ME ADDED
			.rememberMe()
			.alwaysRemember(false)
			.rememberMeParameter("remember-me")
			.tokenRepository(tokenRepository());	
	}
	
	@Autowired
	private PrincipalDetailsService principalDetailsService;
	
	//인증처리 함수
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth
//			.inMemoryAuthentication()
//				.withUser("user")
//				.password(passwordEncoder.encode("1234"))
//				.roles("USER");
//		auth
//		.inMemoryAuthentication()
//			.withUser("member")
//			.password(passwordEncoder.encode("1234"))
//			.roles("MEMBER");
//		auth
//		.inMemoryAuthentication()
//			.withUser("admin")
//			.password(passwordEncoder.encode("1234"))
//			.roles("ADMIN");
		auth.userDetailsService(principalDetailsService)
			.passwordEncoder(passwordEncoder);
	}
	
	//BcryptPasswordEncoder Bean 등록
	//패스워드 검증에 사용
	@Bean
	public PasswordEncoder passwordEncodere() {
		return new BCryptPasswordEncoder();
	}
	
	//REMEMBER-ME를 통한 자동로그인
	//토큰 저장 Bean
	@Bean
	public PersistentTokenRepository tokenRepository() {
		JdbcTokenRepositoryImpl repo = new JdbcTokenRepositoryImpl();
		repo.setDataSource(dataSource2);
		return repo;
	}
}
