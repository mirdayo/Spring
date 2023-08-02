package com.test.app.domain.dto;

import javax.validation.constraints.Min;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
@Builder
public class MemoDto {
	
	@Min(value=10,message="최소 숫자는 10이상 이어야합니다.")
	private int id;
	private String text;
	private String writer;
}
