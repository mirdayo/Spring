package com.test.app.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.dto.MemoDto;
import com.test.app.domain.mapper.MemoMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemoService {
	
	@Autowired
	private MemoMapper mapper;
	
	//전체 메모 가져오기
	public List<MemoDto> geetAllMemo() {
		log.info("MemoService's getAllMemo Call");
		return mapper.selectAll();
	}
	
	//메모작성
	
	
	//메모 수정
	
	
	//메모 삭제
	
	
}
