package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.FoodHistoryVO;

public interface FoodMapper {
	public List<FoodHistoryVO> getFood(int user_index);
}