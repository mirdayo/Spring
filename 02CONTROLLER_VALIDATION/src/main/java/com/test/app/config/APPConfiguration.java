package com.test.app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.test.app.domain.dto.Person;

@Configuration
public class APPConfiguration {
	@Bean
	public Person PersonFunc( ) {
		return new Person().builder()
				.name("정우균")
				.age(11)
				.addr("대구")
				.build();
	}
}
