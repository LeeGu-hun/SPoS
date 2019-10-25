package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PetFoodListDTO {
	private int history_index, food_info_index, food_amount, user_index, food_kcal;
	private String food_name, userName;
	private Date food_date;
}
