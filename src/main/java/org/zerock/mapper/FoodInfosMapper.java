package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.FoodinfoVO;

public interface FoodInfosMapper {

	public List<FoodinfoVO> getCustAll();
	public List<FoodinfoVO> getCust();
}
