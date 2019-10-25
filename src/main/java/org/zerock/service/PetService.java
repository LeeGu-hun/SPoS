package org.zerock.service;

import java.util.List;

import org.zerock.domain.PetSortVO;
import org.zerock.domain.FoodinfoVO;
import org.zerock.domain.PetFoodListDTO;
import org.zerock.domain.PetInfoVO;
import org.zerock.domain.EnrollmentVO;
import org.zerock.domain.Criteria;

public interface PetService {
	public List<FoodinfoVO> getCustList();
	public List<PetSortVO> getCateList();
	public List<PetInfoVO> getProdList();
	public List<PetInfoVO> getProdList(String pet_sort);
	public void Enrollment(EnrollmentVO vo);
	public List getOrderList(Criteria cri);
	public int getTotal(Criteria cri);

}
