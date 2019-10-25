package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.PetFoodIndexListDTO;
import org.zerock.domain.PetFoodListDTO;
import org.zerock.domain.EnrollmentVO;


public interface EnrollmentMapper {
	public void regOrders(EnrollmentVO vo);
	public void regOrderItems(EnrollmentVO vo);
	public List<PetFoodListDTO> getOrders(Criteria search);
	public List<PetFoodIndexListDTO> getOrderItems(Criteria cri);
	public List<PetFoodListDTO>getOrdersWithPaging(Criteria cri);
	public List<PetFoodIndexListDTO> getOrderItemsWithPaging(Criteria cri);
	public int getOrdersTotalCount(Criteria cri);
	public int getOrderItemsTotalCount(Criteria cri);
}
