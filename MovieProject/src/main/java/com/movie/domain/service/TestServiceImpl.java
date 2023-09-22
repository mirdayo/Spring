package com.movie.domain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.domain.mapper.TestMapper;

@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	private TestMapper testMapper;

}
