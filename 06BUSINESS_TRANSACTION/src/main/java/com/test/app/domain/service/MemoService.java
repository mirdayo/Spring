package com.test.app.domain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	public void addMemo(MemoDto dto) {
		log.info("MemoService's addMemo Call");
		mapper.insert(dto);
	}
	
	//메모작성
	@Transactional(rollbackFor = Exception.class)
	public void addMemoTx(MemoDto dto) {
		log.info("MemoService's addMemoTx Call");
		int id = dto.getId();
		mapper.insert(dto);  //01 정상 INSERT
		dto.setId(id);       //PK오류 발생 예정이 dto
		mapper.insert(dto);  //02 PK오류 발생
	}
	
	
	//메모 수정
	
	
	//메모 삭제
	
	
}
