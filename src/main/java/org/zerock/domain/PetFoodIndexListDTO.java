package org.zerock.domain;

import lombok.Data;

@Data
public class PetFoodIndexListDTO extends PetFoodListDTO {
	private String pet_sort, pet_kind;
	private int pet_info_index;
}
