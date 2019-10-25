package org.zerock.service;

import org.zerock.domain.FoodHistoryVO;

public interface FoodService {
	public FoodHistoryVO getFood(String user_id);
}