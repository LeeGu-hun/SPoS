package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class FoodHistoryVO {
	private int history_index;
	private int user_index;
	private int food_info_index;
	private Date food_date;
	private int food_amount;
}
