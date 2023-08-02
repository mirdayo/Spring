package com.test.app.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.app.domain.dto.MemoDto;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/memo")
public class MemoController {
	
	@GetMapping("/form")
	public void get() {
		log.info("GET /memo/get...");
	}
	@PostMapping("/post")
	public void post(@Valid MemoDto dto, BindingResult bindingResult) {
		//유효성 체크
		log.info("POST /memo/post..." + dto);
		log.info("POST /memo/post...isError" + bindingResult.getFieldError("id"));
		if(bindingResult.hasFieldErrors())
			log.info("POST /memo/post...isError" + bindingResult.getFieldError("id").getDefaultMessage());
	}
}
