package org.zerock.domain;

import lombok.Data;

@Data
public class FoodHistoryVO {
	private int food_amount;
	private int food_k;

	public FoodHistoryVO(int food_amount, int food_k) {
		this.food_amount = food_amount;
		this.food_k = food_k;
	}

	public FoodHistoryVO() {
	}
}