package org.zerock.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class EnrollmentVO {
	private Date saleDate;
	private int foodIndex;
	private int total;
	private int userId;
	private int orderId;
	private int[] pet_kind;
	private String[] names;
	
	private List<PetKindNameVO> orderItems;
}


